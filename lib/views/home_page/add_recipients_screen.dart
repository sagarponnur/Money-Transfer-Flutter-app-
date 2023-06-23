import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:r_dotted_line_border/r_dotted_line_border.dart';


import '../../controllers/home/add_recipient_controller.dart';
import '../../utils/custom_color.dart';
import '../../utils/custom_style.dart';
import '../../utils/dimensions.dart';
import '../../utils/strings.dart';
import '../../widgets/appbar/appbar_widget.dart';
import '../../widgets/auth_widgets/country_picker_input_widget.dart';
import '../../widgets/home_page_widgets/custom_dropdown_widget.dart';
import '../../widgets/inputs/primary_input_widget2.dart';
import '../../widgets/onboard_widgets/primary_button_widget.dart';
import '../../widgets/size.dart';

class AddRecipients extends StatelessWidget {
   AddRecipients({Key? key}) : super(key: key);

   final controller = Get.put(AddRecipientController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.white,
      appBar: AppBarWidget(
        appTitle: Strings.addNewRecipient2,
      ),

      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(
        horizontal: Dimensions.width,
        vertical: Dimensions.height
      ),
      children: [
        PrimaryInputWidget2(
          controller: controller.recipientNameController,
          label: Strings.recipientName,
          hint: Strings.enterRecipientName,
        ),

        const GapSize(
          height: 20,
        ),

        PrimaryInputWidget2(
          controller: controller.recipientEmailController,
          label: Strings.recipientEmail,
          hint: Strings.enterRecipientEmail,
        ),

        const GapSize(
          height: 20,
        ),

        CountryPickerWidget(
          text: Strings.recipientCountry,
          onChanged: (value){
            controller.countryCode.value = value.toString();
            controller.countryName.value = value.name;
          },
        ),

        const GapSize(
          height: 20,
        ),

        Row(
          children: [
            Expanded(
              child: PrimaryInputWidget2(
                controller: controller.recipientCityController,
                label: Strings.city,
                hint: Strings.enterCity,
              ),
            ),
 
            const GapSize(
              width: 20,
            ),

            Expanded(
              child: PrimaryInputWidget2(
                controller: controller.recipientZipCodeController,
                label: Strings.zipCode,
                hint: Strings.enterZipCode,
              ),
            ),
          ],
        ),

        const GapSize(
          height: 20,
        ),

        PrimaryInputWidget2(
          controller: controller.additionalAddressController,
          label: Strings.additionalAddressInfo,
          hint: Strings.additionalAddressInfoHint,
        ),

        const GapSize(
          height: 20,
        ),

        Obx(() => PrimaryInputWidget2(
          keyBoardType: TextInputType.number,
          code: controller.countryCode.value,
          controller: controller.phoneNumberController,
          label: Strings.phoneNumber,
          hint: Strings.enterPhoneNumber,
        )),


        const GapSize(
          height: 20,
        ),

        _fileUpload(context),

        const GapSize(
          height: 20,
        ),

        Row(
          children: [
            Expanded(
              child: CustomDropDownWidget(
                text: Strings.gender,
                items: controller.gender,
                onChanged: (value){
                  controller.genderText.value = value!;
                },
              ),
            ),

            const GapSize(
              width: 20,
            ),

            Expanded(
              child: PrimaryInputWidget2(
                controller: controller.dobController,
                label: Strings.dob,
                hint: Strings.dobHint,
              ),
            ),
          ],
        ),

        const GapSize(
          height: 20,
        ),

        CustomDropDownWidget(
          text: Strings.relationshipWithRecipient,
          items: controller.relation,
          onChanged: (value){
            controller.relationText.value = value!;
          },
        ),

        const GapSize(
          height: 20,
        ),

        PrimaryButtonWidget(
          onTap: (){
            controller.addRecipient();
          },

          color: CustomColor.primaryColor,
          text: Strings.signIn,
        ),

        const GapSize(
          height: 20,
        ),
      ],
    );
  }




   _fileUpload(BuildContext context) {
     return GestureDetector(

       onTap: (){
         controller.bulkUploadByCSV(context);
       },

       child: Container(
         height: Dimensions.height * 4,
         decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(Dimensions.radius * 0.7),
             border: RDottedLineBorder.all(
                 width: 2,
                 color: controller.bulkFileName.value == ''
                     ? CustomColor.borderColor
                     : CustomColor.primaryColor.withOpacity(0.5),
                 dottedSpace: 4,
                 dottedLength: 4
             )
         ),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             Obx(() => Visibility(
               visible: controller.bulkFileName.value == '',
               child: Expanded(
                 flex: 1,
                 child: SvgPicture.asset(
                   IconPath.uploadIconPath,
                 ),
               ),
             )),
             SizedBox(width: Dimensions.height * 0.5),
             Expanded(
               flex: 3,
               child: Obx(() => Text(
                 controller.bulkFileName.value == ''
                     ? Strings.uploadRecipientPicture
                     : controller.bulkFileName.value,
                 style: controller.bulkFileName.value == ''
                     ? CustomStyle.hintStyle
                     : CustomStyle.focusedStyle,
                 overflow: TextOverflow.ellipsis,
               )),
             ),
           ],
         ),
       ),
     );
   }
}

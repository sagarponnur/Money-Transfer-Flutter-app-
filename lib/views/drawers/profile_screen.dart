import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../controllers/drawers/profile_controller.dart';
import '../../utils/custom_color.dart';
import '../../utils/dimensions.dart';
import '../../utils/strings.dart';
import '../../widgets/appbar/appbar_widget.dart';
import '../../widgets/auth_widgets/country_picker_input_widget.dart';
import '../../widgets/inputs/primary_input_widget.dart';
import '../../widgets/onboard_widgets/primary_button_widget.dart';
import '../../widgets/size.dart';

class ProfileScreen extends StatelessWidget {
   ProfileScreen({Key? key}) : super(key: key);

  final controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.white,
      appBar: AppBarWidget(
        appTitle: Strings.profile,
      ),

      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:  EdgeInsets.symmetric(
            horizontal: Dimensions.width * 2
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const GapSize(
              height: 25,
            ),

            _profileWidget(context),

            const GapSize(
              height: 25,
            ),

            _inputsWidget(),

            const GapSize(
              height: 25,
            ),

            _buttonsWidgets(context),

            const GapSize(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }

   _buttonsWidgets(BuildContext context) {
     return SizedBox(
       width: MediaQuery.of(context).size.width ,
       child: PrimaryButtonWidget(
         color: CustomColor.primaryColor,
         onTap: (){
           controller.updateMethod();
         },

         text: Strings.updateProfile,
       ),
     );
   }

  _inputsWidget() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: PrimaryInputWidget(
                controller: controller.firstNameController,
                label: Strings.firstName,
                hint: Strings.enter,
                icon: IconPath.nameIconPath,
              ),
            ),

            const GapSize(
              width: 10,
            ),

            Expanded(
              child: PrimaryInputWidget(
                controller: controller.lastNameController,
                label: Strings.lastName,
                hint: Strings.enter,
                icon: IconPath.nameIconPath,
              ),
            ),
          ],
        ),

        const GapSize(
          height: 20,
        ),

        PrimaryInputWidget(
          controller: controller.emailController,
          label: Strings.userName,
          hint: Strings.enterUserName,
          icon: IconPath.emailIconPath,
        ),

        const GapSize(
          height: 20,
        ),

        CountryPickerWidget(
          text: Strings.country,
          onChanged: (value){
            controller.code.value = value.toString();
            // print(controller.code.value);
          },
        ),

        const GapSize(
          height: 20,
        ),

        Obx(() => PrimaryInputWidget(
          code: controller.code.value,
          controller: controller.phoneNumberController,
          label: Strings.phoneNumber,
          hint: Strings.enterPhoneNumber,
          icon: IconPath.phoneIconPath,
        )),
      ],
    );
  }

  _profileWidget(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(Dimensions.height * 0.3),
          height: MediaQuery.of(context).size.width * 0.4,
          width: MediaQuery.of(context).size.width * 0.4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimensions.radius * 10),
            color: CustomColor.primaryColor
          ),
          child: Obx(() => controller.imagePath.value == 'NULL'
              ? Container(
            height: MediaQuery.of(context).size.width * 0.35,
            width: MediaQuery.of(context).size.width * 0.35,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius * 10),
                color: CustomColor.white,
                image:  const DecorationImage(
                    image: AssetImage(
                        IconPath.userPath
                    ),
                    fit: BoxFit.fill
                )
            ),
          )
              : CircleAvatar(
                backgroundImage: FileImage(
                    controller.image!,
                ),
              )
          ),
        ),
        Positioned(
          bottom: 9,
          right: 9,
          child: GestureDetector(
            onTap: (){
              controller.uploadImage(context);
            },
            child: CircleAvatar(
              backgroundColor: CustomColor.primaryColor,
              child: SvgPicture.asset(IconPath.cameraIconPath),
            ),
          )
        )
      ],
    );
  }
}

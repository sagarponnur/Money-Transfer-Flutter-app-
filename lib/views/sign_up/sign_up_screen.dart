import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/custom_color.dart';
import '../../../utils/custom_style.dart';
import '../../../utils/dimensions.dart';
import '../../../utils/strings.dart';
import '../../../widgets/inputs/password_input_widget.dart';
import '../../../widgets/inputs/primary_input_widget.dart';
import '../../../widgets/size.dart';
import '../../controllers/auth/signup_controller.dart';
import '../../widgets/appbar/appbar_widget.dart';
import '../../widgets/auth_widgets/country_picker_input_widget.dart';
import '../../widgets/auth_widgets/social_widget.dart';
import '../../widgets/onboard_widgets/primary_button_widget.dart';

class SignUpScreen extends StatelessWidget {
   SignUpScreen({Key? key}) : super(key: key);

   final controller = Get.put(SignUpController());


   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.white,
      appBar: AppBarWidget(
        appTitle: Strings.signUp,
      ),
      body: _bodyWidget(context),
    );
  }


  _bodyWidget(BuildContext context) {
    return ListView(
      children: [
        _cardWidget(context),

        const GapSize(
          height: 25,
        ),
        
        _newTo(),

        const GapSize(
          height: 25,
        ),


        SocialWidget(
          googleOnTap: (){

          },

          facebookOnTap: (){

          },

          appleOnTap: (){

          },
        ),


        const GapSize(
          height: 25,
        ),
      ],
    );
  }

  _newTo() {
    return Align(
      alignment: Alignment.center,
      child: RichText(
        text: TextSpan(
          text: Strings.alreadyHaveAnAccount.tr,
          style: CustomStyle.richPreTextStyle,
          children: <TextSpan>[
            TextSpan(
              text: Strings.signIn.tr,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  controller.goToSignIp();
                },
              style: CustomStyle.richTextStyle,
            ),
          ],
        ),
      ),
    );
  }

  _cardWidget(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(
        horizontal: Dimensions.width * 2
      ),
      child: Column(
        children: [

          const GapSize(
            height: 20,
          ),

          _inputsWidgets(),

          const GapSize(
            height: 20,
          ),

          _buttonsWidgets(context)
        ],
      )
    );
  }

  _inputsWidgets() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
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
            controller.countryCode.value = value.toString();
            // print(controller.countryCode.value);
          },
        ),

        const GapSize(
          height: 20,
        ),

        Obx(() => PrimaryInputWidget(
          keyBoardType: TextInputType.number,
          code: controller.countryCode.value,
          controller: controller.phoneNumberController,
          label: Strings.phoneNumber,
          hint: Strings.enterPhoneNumber,
          icon: IconPath.phoneIconPath,
        )),


        const GapSize(
          height: 20,
        ),

        PasswordInputWidget(
          controller: controller.passwordController,
          notNeedIcon: false,
          hint: Strings.password,
          label: Strings.enterPassword,
        ),

        const GapSize(
          height: 10,
        ),

        FittedBox(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Obx(() => Checkbox(
                  value: controller.rememberMe.value,
                  onChanged: (value){
                    controller.rememberMe.value = value!;
                  }
              )),
              RichText(
                  text: TextSpan(
                    text: Strings.byClicking,
                    style: CustomStyle.checkTitleStyle,
                    children: [
                      TextSpan(
                        text: Strings.termsAndConditions,
                          style: CustomStyle.checkSubTitleStyle
                      )
                    ]
                  )
              )
            ],
          ),
        ),

        const GapSize(
          height: 20,
        ),

      ],
    );
  }

   _buttonsWidgets(BuildContext context) {
     return SizedBox(
       width: MediaQuery.of(context).size.width * 0.7,
       child: PrimaryButtonWidget(
         onTap: (){
           controller.routeEmailVerificationScreen();
         },

         color: CustomColor.primaryColor,
         text: Strings.signUp.toUpperCase(),
       ),
     );
   }

}

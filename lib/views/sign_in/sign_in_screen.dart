import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/custom_style.dart';
import '../../../utils/dimensions.dart';
import '../../../utils/strings.dart';
import '../../../widgets/inputs/password_input_widget.dart';
import '../../../widgets/inputs/primary_input_widget.dart';
import '../../../widgets/size.dart';
import '../../controllers/auth/signin_controller.dart';
import '../../utils/custom_color.dart';
import '../../widgets/appbar/appbar_widget.dart';
import '../../widgets/auth_widgets/social_widget.dart';
import '../../widgets/onboard_widgets/primary_button_widget.dart';

class SignInScreen extends StatelessWidget {
   SignInScreen({Key? key}) : super(key: key);

   final controller = Get.put(SignInController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        appTitle: Strings.signIn,
      ),
      
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return ListView(
      children: [

        const GapSize(
          height: 25,
        ),

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
        )

      ],
    );
  }


   _newTo() {
     return Align(
       alignment: Alignment.center,
       child: RichText(
         text: TextSpan(
           text: Strings.dontHaveAnAccount.tr,
           style: CustomStyle.richPreTextStyle,
           children: <TextSpan>[
             TextSpan(
               text: Strings.signUp.tr,
               recognizer: TapGestureRecognizer()
                 ..onTap = () {
                   controller.goToSignUp();
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

          _inputsWidgets(context),

          _buttonsWidgets(context),

        ],
      )
    );
  }

  _buttonsWidgets(BuildContext context) {
    return Column(
      children: [

        const GapSize(
          height: 25,
        ),

        PrimaryButtonWidget(
          onTap: (){
            controller.routeInDashboardScreen();
          },

          color: CustomColor.primaryColor,
          text: Strings.signIn,
        ),
      ],
    );
  }

  _inputsWidgets(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PrimaryInputWidget(
          controller: controller.userNameController,
          label: Strings.userName,
          hint: Strings.enterUserName,
          icon: IconPath.emailIconPath,
        ),

        const GapSize(
          height: 20,
        ),

        PasswordInputWidget(
          controller: controller.passwordController,
          notNeedIcon: false,
          hint: Strings.enterPassword,
          label: Strings.password,
        ),

        const GapSize(
          height: 10,
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Obx(() => Checkbox(
                    value: controller.rememberMe.value,
                    onChanged: (value){
                      controller.rememberMe.value = value!;
                    }
                )),
                Text(
                    Strings.rememberMe,
                  style: CustomStyle.checkTitleStyle,
                ),
              ],
            ),

            TextButton(
                onPressed: (){
                  controller.forgetPassword(context);
                },
                child: Text(
                  Strings.forgotPassword,
                  style: CustomStyle.forgetTextStyle,
                )
            ),
          ],
        )
      ],
    );
  }

}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/custom_color.dart';
import '../../../utils/dimensions.dart';
import '../../../utils/strings.dart';
import '../../../widgets/inputs/password_input_widget.dart';
import '../../../widgets/size.dart';
import '../../controllers/auth/reset_password_controller.dart';
import '../../widgets/appbar/appbar_widget.dart';
import '../../widgets/onboard_widgets/primary_button_widget.dart';

class ResetPasswordScreen extends StatelessWidget {
   ResetPasswordScreen({Key? key}) : super(key: key);
   final controller = Get.put(ResetPasswordController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.white,
      appBar: AppBarWidget(
        appTitle: Strings.resetPassword,
      ),

      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(
        horizontal: Dimensions.width * 2,
        vertical: Dimensions.height * 2,
      ),
      child: Column(
        children: [
          _inputsWidgets(),

          PrimaryButtonWidget(
            onTap: (){
              controller.submitResetPasswordButton(context);
            },

            color: CustomColor.primaryColor,
            text: Strings.resetPassword.toUpperCase(),
          ),
        ],
      ),
    );
  }



   _inputsWidgets() {
     return Column(
       children: [
         PasswordInputWidget(
           controller: controller.newPasswordController,
           notNeedIcon: false,
           hint: Strings.enterNewPassword,
           label: Strings.newPassword,
         ),

         const GapSize(
           height: 20,
         ),

         PasswordInputWidget(
           controller: controller.confirmPasswordController,
           notNeedIcon: false,
           hint: Strings.enterConfirmPassword,
           label: Strings.confirmPassword,
         ),

         const GapSize(
           height: 30,
         ),
       ],
     );
   }
}

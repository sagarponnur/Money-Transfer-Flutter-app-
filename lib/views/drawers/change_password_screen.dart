import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/drawers/change_password_controller.dart';
import '../../utils/custom_color.dart';
import '../../utils/dimensions.dart';
import '../../utils/strings.dart';
import '../../widgets/appbar/appbar_widget.dart';
import '../../widgets/inputs/password_input_widget.dart';
import '../../widgets/onboard_widgets/primary_button_widget.dart';
import '../../widgets/size.dart';

class ChangePasswordScreen extends StatelessWidget {
   ChangePasswordScreen({Key? key}) : super(key: key);

   final controller = Get.put(ChangePasswordController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.white,
      appBar: AppBarWidget(
        appTitle: Strings.changePassword,
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
      child: ListView(
        children: [
          _inputsWidgets(),

          PrimaryButtonWidget(
            color: CustomColor.primaryColor,
            onTap: (){
              controller.submitResetPasswordButton(context);
            },

            text: Strings.changePassword.toUpperCase(),
          ),
        ],
      ),
    );
  }



  _inputsWidgets() {
    return Column(
      children: [
        PasswordInputWidget(
          controller: controller.oldPasswordController,
          notNeedIcon: false,
          hint: Strings.enterOldPassword,
          label: Strings.oldPassword,
        ),

        const GapSize(
          height: 20,
        ),

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

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/routes.dart';
import '../../utils/strings.dart';
import '../../widgets/dialog/dialog_complete.dart';

class ChangePasswordController extends GetxController{
  final oldPasswordController = TextEditingController();
  final newPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    oldPasswordController.dispose();
    newPasswordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  void submitResetPasswordButton(context) {
    CompleteDialog.customDialog(
        context,
        Strings.changePasswordCongratulations,
            (){
          Get.offNamedUntil(Routes.homeScreen, (route) => false);
        }
    );
  }

}
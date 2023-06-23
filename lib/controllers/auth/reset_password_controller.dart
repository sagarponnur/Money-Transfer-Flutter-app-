import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/routes.dart';
import '../../utils/strings.dart';
import '../../widgets/dialog/dialog_complete.dart';

class ResetPasswordController extends GetxController{

  final newPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    newPasswordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  void submitResetPasswordButton(context) {
    CompleteDialog.customDialog(
        context,
        Strings.otpCongratulations,
        (){
          Get.offNamedUntil(Routes.onboardScreen, (route) => false);
        }
    );
  }

}
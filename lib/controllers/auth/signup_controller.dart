import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/routes.dart';

class SignUpController extends GetxController{

  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final userNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNumberController = TextEditingController();

  final referralCodeController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  RxBool rememberMe = false.obs;

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    userNameController.dispose();
    emailController.dispose();
    phoneNumberController.dispose();
    referralCodeController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();

    super.dispose();
  }


  RxString countryCode = '+1'.obs;

  void goToSignIp() {
    Get.offNamed(Routes.signInScreen);
  }

  void routeEmailVerificationScreen() {
    Get.toNamed(Routes.emailVerificationScreen);
  }

}
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/routes.dart';


class OnboardScreenController extends GetxController{
  var selectedPageIndex = 0.obs;
  var pageController = PageController();
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void signInButton() {
    Get.toNamed(Routes.signInScreen);
  }

  void signUpButton() {
    Get.toNamed(Routes.signUpScreen);
  }

  void transferCalculator() {
    Get.toNamed(Routes.transferCalculator);
  }

  void trackTransaction() {
    Get.toNamed(Routes.trackTransactionScreen);
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/routes.dart';
import '../../utils/strings.dart';
import '../../views/home_page/amount_information_screen.dart';
import '../../views/home_page/payment_information_screen.dart';
import '../../views/home_page/preview_information_screen.dart';
import '../../views/home_page/recipient_information_screen.dart';
import '../../widgets/dialog/dialog_complete.dart';

class HomeController extends GetxController{
  void logOut() {
    Get.offNamedUntil(Routes.onboardScreen, (route) => false);
  }

  void changePasswordScreen() {
    Get.toNamed(Routes.changePasswordScreen);
  }

  void savedRecipientsScreen() {
    Get.toNamed(Routes.saveRecipientsScreen);
  }

  void transferLog() {
    Get.toNamed(Routes.transferLogScreen);
  }

  void profile() {
    Get.toNamed(Routes.profileScreen);
  }

  RxDouble indicatorValue = 0.25.obs;

  RxInt index = 0.obs;

  List screens = [
    const AmountInformationScreen(),
    const RecipientInformationScreen(),
    const PaymentInformationScreen(),
    const PreviewInformationScreen()
  ];

  void successfullyTransaction(BuildContext context) {
    CompleteDialog.customDialog(
        context,
        Strings.successfullyTransfer,
            (){
          Get.offNamedUntil(Routes.homeScreen, (route) => false);
        }
    );
  }

}
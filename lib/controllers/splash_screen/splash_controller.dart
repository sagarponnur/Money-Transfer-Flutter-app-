import 'dart:async';
import 'package:get/get.dart';

import '../../routes/routes.dart';


class SplashController extends GetxController{
  @override
  void onReady() {
    super.onReady();
    // var languageList = LocalStorage.getLanguage();
    // var locale = Locale(languageList[0], languageList[1]);
    // Get.updateLocale(locale);
    navigate();
  }

  navigate() async {
    Timer(const Duration(seconds: 3), () {
      // PrefHelper.isCompleted()
      //     ? Get.offAllNamed(Routes.onboardScreen)
      //     : Get.offAndToNamed(Routes.onboardScreen);
      Get.offAndToNamed(Routes.onboardScreen);
    });
  }
}
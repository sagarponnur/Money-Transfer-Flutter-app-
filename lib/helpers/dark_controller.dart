import 'package:get/get.dart';

import 'theme_helper.dart';

class DarkThemeController extends GetxController {
  RxBool isDark = false.obs;

  @override
  void onInit() {
    isDark.value = DarkHelper.isDark();

    super.onInit();
  }

  goToChangeTheme(value) {
    isDark.value = value;
    DarkHelper.saveDarkStatus(isCompleted: value);
  }
}

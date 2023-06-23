import 'package:get_storage/get_storage.dart';

class DarkHelper {
  static void saveDarkStatus({required bool isCompleted}) {
    GetStorage().write("isDark", isCompleted);
  }

  static bool isDark() {
    return GetStorage().read("isDark") ?? false;
  }
}

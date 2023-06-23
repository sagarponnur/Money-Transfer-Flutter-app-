import 'package:get_storage/get_storage.dart';

class PrefHelper {
  static void saveIntroStatus({required bool isCompleted}) {
    GetStorage().write("isCompleted", isCompleted);
  }

  static bool isCompleted() {
    return GetStorage().read("isCompleted") ?? false;
  }
}

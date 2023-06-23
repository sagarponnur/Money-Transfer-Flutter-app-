import 'package:get/get.dart';

import '../controllers/home/money_transfer_controller.dart';


class HomeScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(
      MoneyTransferController(),
    );
  }
}

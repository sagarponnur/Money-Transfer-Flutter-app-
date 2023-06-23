import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../routes/routes.dart';

class OTPController extends GetxController{
  final pinCodeController = TextEditingController();

  StreamController<ErrorAnimationType>? errorController;

  RxString currentText = "".obs;
  changeCurrentText(value) {
    currentText.value = value;
  }

  @override
  void dispose() {
    pinCodeController.dispose();
    errorController!.close();
    timer?.cancel();
    super.dispose();
  }

  @override
  void onInit() {
    errorController = StreamController<ErrorAnimationType>();
    timerInit();
    super.onInit();
  }

  timerInit(){
    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (minuteRemaining.value != 0) {
        secondsRemaining.value--;
        if(secondsRemaining.value == 0){
          secondsRemaining.value = 59;
          minuteRemaining.value = 0;
        }
      }
      else if(minuteRemaining.value == 0 && secondsRemaining.value != 0){
        secondsRemaining.value--;
      }
      else {
        enableResend.value = true;
      }
    });
  }


  RxInt secondsRemaining = 59.obs;
  RxInt minuteRemaining = 01.obs;
  RxBool enableResend = false.obs;
  Timer? timer;

  resendCode() {
    secondsRemaining.value = 59;
    enableResend.value = false;
    timerInit();
  }


  void submitButton() {
    Get.offNamed(Routes.resetPasswordScreen);
  }

}
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../utils/custom_color.dart';
import '../../../utils/custom_style.dart';
import '../../../utils/dimensions.dart';
import '../../../utils/strings.dart';
import '../../../widgets/size.dart';
import '../../controllers/auth/otp_controller.dart';
import '../../widgets/appbar/appbar_widget.dart';
import '../../widgets/onboard_widgets/primary_button_widget.dart';

class OTPScreen extends StatelessWidget {
   OTPScreen({Key? key}) : super(key: key);

   final controller = Get.put(OTPController());
   final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.white,
      appBar: AppBarWidget(
        appTitle: Strings.otpVerification,
      ),

      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:  EdgeInsets.symmetric(
          horizontal: Dimensions.width * 2
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            const GapSize(
              height: 50,
            ),


            Text(
              Strings.verificationCode.tr,
              style: CustomStyle.onboardTitleStyle,
              textAlign: TextAlign.center,
            ),

            Text(
              Strings.otpSubTitle.tr,
              style: CustomStyle.onboardSubTitleStyle,
              textAlign: TextAlign.center,
              maxLines: 2,
            ),

            const GapSize(
              height: 30,
            ),


            _pinField(context),


            const GapSize(
              height: 30,
            ),

            _timer(),

            const GapSize(
              height: 30,
            ),

            _buttons()

          ],
        ),
      ),
    );
  }

   _pinField(BuildContext context) {
    return Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.width * 0),
          child: Form(
            key: formKey,
            child: PinCodeTextField(
              appContext: context,
              backgroundColor: Colors.transparent,
              textStyle: CustomStyle.focusedStyle,
              pastedTextStyle: CustomStyle.hintStyle,
              length: 6,
              obscureText: false,
              blinkWhenObscuring: true,
              animationType: AnimationType.fade,

              validator: (v) {
                if (v!.length < 5) {
                  return Strings.pleaseFillOutTheField;
                } else {
                  return null;
                }
              },
              pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(Dimensions.radius * 0.7),
                  fieldHeight: Dimensions.height * 4,
                  fieldWidth: Dimensions.width * 4.5,
                  inactiveColor: CustomColor.borderColor,
                  activeColor: CustomColor.primaryColor.withOpacity(0.8),
                  selectedColor: CustomColor.primaryColor
              ),
              cursorColor: CustomColor.primaryColor,
              animationDuration: const Duration(milliseconds: 300),
              // errorAnimationController: controller.errorController,
              // controller: controller.pinCodeController,
              keyboardType: TextInputType.number,
              onCompleted: (v) {},
              onChanged: (value) {
                controller.changeCurrentText(value);
              },
              beforeTextPaste: (text) {
               return true;
              },
            ),
          ),
        );
  }

  _buttons() {
    return Column(
      children: [
        PrimaryButtonWidget(
          color: CustomColor.primaryColor,
          text: Strings.submit.tr,
          onTap: () {
            controller.submitButton();
          },
        ),

        const GapSize(
          height: 10,
        ),

        Obx(() => Visibility(
          visible: controller.enableResend.value,
          child: TextButton(
              onPressed: (){
                controller.resendCode();
              },
              child: Text(
                Strings.resendCode,
                style: CustomStyle.richTextStyle,
              )
          ),
        ))

      ],
    );
  }

  _timer() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(IconPath.clockIconPath),
        const GapSize(
          width: 5,
        ),

        Obx(() => Text(
          '0${controller.minuteRemaining.value}:${controller.secondsRemaining.value}',
          style: CustomStyle.onboardSubTitleStyle,
        ))
      ],
    );
  }

}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../routes/routes.dart';
import '../../utils/custom_color.dart';
import '../../utils/custom_style.dart';
import '../../utils/dimensions.dart';
import '../../utils/strings.dart';
import '../../widgets/inputs/primary_input_widget.dart';
import '../../widgets/onboard_widgets/primary_button_widget.dart';
import '../../widgets/size.dart';

class SignInController extends GetxController{
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();

  RxBool rememberMe = false.obs;


  @override
  void dispose() {
    userNameController.dispose();
    passwordController.dispose();
    emailController.dispose();
    super.dispose();
  }

  void forgetPassword(BuildContext context) {
    openDialogue();
  }

  void routeInDashboardScreen() {
    Get.offNamedUntil(Routes.homeScreen, (route) => false);
  }

  void goToSignUp() {
    Get.offNamed(Routes.signUpScreen);
  }



   Future openDialogue() {
    return Get.defaultDialog(
      backgroundColor: CustomColor.white,
      title: "",
      titleStyle: const TextStyle(fontSize: 0),
      content: Padding(
        padding:  EdgeInsets.symmetric(
          horizontal: Dimensions.width * 2
        ),
        child: Column(
          children: [

            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                alignment: Alignment.centerRight,
                onPressed: (){
                  Get.back();
                },
                icon: SvgPicture.asset(
                  IconPath.crossIconPath,
                  color: CustomColor.buttonTextColor,
                ),
              ),
            ),



            const GapSize(
              height: 0,
            ),

            Text(
              Strings.forgotPassword.tr,
              style: CustomStyle.onboardTitleStyle,
              textAlign: TextAlign.center,
            ),

            Text(
              Strings.forgotPassHint.tr,
              style: CustomStyle.onboardSubTitleStyle,
              textAlign: TextAlign.center,
              maxLines: 2,
            ),

            const GapSize(
              height: 20,
            ),


            PrimaryInputWidget(
              controller: emailController,
              label: Strings.userName,
              hint: Strings.enterUserName,
              icon: IconPath.emailIconPath,
            ),

            const GapSize(
              height: 20,
            ),

            PrimaryButtonWidget(
              text: Strings.submit.tr,
              onTap: () {
                Get.toNamed(Routes.otpScreen);
              },
              color: CustomColor.primaryColor,
            ),

            const GapSize(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
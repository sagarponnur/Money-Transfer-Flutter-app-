import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../controllers/onboard/onboard_screen_controller.dart';
import '../../models/onboard_model.dart';
import '../../utils/custom_color.dart';
import '../../utils/dimensions.dart';
import '../../utils/strings.dart';
import '../../widgets/onboard_widgets/border_button_widget.dart';
import '../../widgets/onboard_widgets/onboard_widget.dart';
import '../../widgets/onboard_widgets/primary_button_widget.dart';

class OnboardScreen extends StatelessWidget {
  OnboardScreen({Key? key}) : super(key: key);

  final  controller = Get.put(OnboardScreenController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(

      body: Column(
        children: [
          Expanded(
            flex: 7,
            child: PageView.builder(
              onPageChanged: controller.selectedPageIndex,
              controller: controller.pageController,
              itemCount: onBoardModePages.length,
              itemBuilder: (context, index) {

                return OnboardContentWidget(
                  image: onBoardModePages[index].imagePath,
                  title: onBoardModePages[index].title,
                  subTitle: onBoardModePages[index].subTitle,
                );
              },
            ),
          ),


          Obx(() => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              onBoardModePages.length,
                  (index) => AnimatedContainer(
                duration:
                const Duration(milliseconds: 200),
                margin: EdgeInsets.only(right: Dimensions.width),
                height: Dimensions.width,
                width: Dimensions.width,
                decoration: BoxDecoration(
                  color: index == controller.selectedPageIndex.value
                      ? CustomColor.primaryColor
                      : CustomColor.white,

                  border: Border.all(
                    width: 1,
                    color: index == controller.selectedPageIndex.value
                        ? CustomColor.primaryColor
                        : CustomColor.primaryColor,
                  ),
                  borderRadius: BorderRadius.circular(Dimensions.radius * 10),
                ),
              ),
            ),
          )),

          Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.width * 1.5
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: Dimensions.height),
                    BorderButtonWidget(
                      onTap: (){
                        controller.trackTransaction();
                      },
                      text: Strings.transactionDetail,
                    ),
                    SizedBox(height: Dimensions.height),
                    BorderButtonWidget(
                      onTap: (){
                        controller.transferCalculator();
                      },
                      text: Strings.transferDetail,
                    ),
                    SizedBox(height: Dimensions.height),

                    Row(
                      children: [
                        Expanded(
                          child: PrimaryButtonWidget(
                            onTap: (){
                              controller.signInButton();
                            },

                            text: Strings.signIn,
                            color: CustomColor.primaryColor,
                          ),
                        ),

                        SizedBox(
                          width: Dimensions.width,
                        ),

                        Expanded(
                          child: PrimaryButtonWidget(
                            onTap: (){
                              controller.signUpButton();
                            },

                            text: Strings.signUp,
                            color: CustomColor.secondaryColor,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
          )
        ],
      ),

    ));
  }
}

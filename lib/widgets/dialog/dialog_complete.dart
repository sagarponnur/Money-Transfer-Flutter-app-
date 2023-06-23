import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../utils/custom_color.dart';
import '../../utils/custom_style.dart';
import '../../utils/dimensions.dart';
import '../../utils/strings.dart';
import '../onboard_widgets/primary_button_widget.dart';
import '../size.dart';




class CompleteDialog{

  static customDialog(BuildContext context, String subTitle, Function onTap){
    return showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Material(
            type: MaterialType.transparency,
            child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: Dimensions.width * 2.4
                ),
                 color: CustomColor.white,

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const GapSize(
                      height: 30,
                    ),

                    SvgPicture.asset(IconPath.confirmationSVG),

                    const GapSize(
                      height: 30,
                    ),

                    Text(
                      Strings.congratulations.tr,
                      style: CustomStyle.onboardTitleStyle,
                      textAlign: TextAlign.center,
                    ),

                    Text(
                      subTitle.tr,
                      style: CustomStyle.onboardSubTitleStyle,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                    ),

                    const GapSize(
                      height: 30,
                    ),

                    PrimaryButtonWidget(
                      onTap: (){
                        onTap();
                      },
                      color: CustomColor.primaryColor,
                      text: Strings.okay.toUpperCase(),
                    ),
                  ],
                )
            ),
          ),
        );
      },
    );
  }
}
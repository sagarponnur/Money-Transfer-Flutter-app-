import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../utils/custom_color.dart';
import '../../utils/dimensions.dart';
import '../../utils/strings.dart';
import '../size.dart';

class SocialWidget extends StatelessWidget {

  final VoidCallback googleOnTap, facebookOnTap, appleOnTap;
  const SocialWidget({
    Key? key,
    required this.googleOnTap,
    required this.facebookOnTap,
    required this.appleOnTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Dimensions.width * 2
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const GapSize(height: 20),

          Row(
            children: [
              Expanded(
                child: Container(
                  height: 1,
                  width: double.infinity,
                  color: CustomColor.borderColor,
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.width
                ),
                child: Text(
                  Strings.or.tr,
                ),
              ),

              Expanded(
                child: Container(
                  height: 1,
                  width: double.infinity,
                  color: CustomColor.borderColor,
                ),
              ),
            ],
          ),

          const GapSize(height: 20),

          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                  onTap: googleOnTap,
                  child: SvgPicture.asset(IconPath.googleIconPath)),

              const GapSize(width: 10),

              GestureDetector(
                  onTap: facebookOnTap,
                  child: SvgPicture.asset(IconPath.facebookIconPath)),

              const GapSize(width: 10),

              GestureDetector(
                  onTap: appleOnTap,
                  child: SvgPicture.asset(IconPath.appleIconPath)),
            ],
          )
        ],
      ),
    );
  }
}

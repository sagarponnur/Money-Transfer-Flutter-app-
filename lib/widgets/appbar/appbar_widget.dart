import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../utils/custom_color.dart';
import '../../utils/custom_style.dart';
import '../../utils/strings.dart';


class AppBarWidget extends AppBar {
  final String appTitle;
   AppBarWidget({super.key,  required this.appTitle}): super(
     backgroundColor: CustomColor.white,
     title: Text(
       appTitle.tr,
       style: CustomStyle.appbarTitleStyle,
     ),
     elevation: 2,
     automaticallyImplyLeading: false,
     leading: IconButton(
        onPressed: (){
          Get.back();
        },
        icon: SvgPicture.asset(IconPath.backwardPath)
    )
   );
}

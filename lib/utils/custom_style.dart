import 'package:flutter/material.dart';
import 'custom_color.dart';
import 'dimensions.dart';

class CustomStyle {

  static var gradientBgDark =    const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        CustomColor.white,
        CustomColor.black,
      ],
    ),
  );

  static var appbarTitleStyle = TextStyle(
    fontSize: Dimensions.buttonTextSize,
    fontWeight: FontWeight.w500,
    color: CustomColor.textColor,
  );

  static var onboardTitleStyle = TextStyle(
    fontSize: Dimensions.biggestTextSize,
    fontWeight: FontWeight.w600,
    color: CustomColor.textColor,
  );

  static var homeScreenTitleStyle = TextStyle(
    fontSize: Dimensions.bigTextSize,
    fontWeight: FontWeight.w600,
    color: CustomColor.textColor,
  );

  static var previewTextStyle1 = TextStyle(
    fontSize: Dimensions.mediumTextSize,
    fontWeight: FontWeight.w600,
    color: CustomColor.labelColor,
  );
  static var previewTextStyle2 = TextStyle(
    fontSize: Dimensions.defaultTextSize,
    fontWeight: FontWeight.w500,
    color: CustomColor.labelColor,
  );

  static var onboardSubTitleStyle = TextStyle(
    fontSize: Dimensions.mediumTextSize,
    fontWeight: FontWeight.w400,
    color: CustomColor.textColor,
  );

  static var borderButtonTextStyle = TextStyle(
    fontSize: Dimensions.buttonTextSize,
    fontWeight: FontWeight.w600,
    color: CustomColor.buttonTextColor,
  );

  static var nameTitleTextStyle = TextStyle(
    fontSize: Dimensions.bigTextSize,
    fontWeight: FontWeight.w600,
    color: CustomColor.buttonTextColor,
  );
  static var tileSubTitleStyle = TextStyle(
    fontSize: Dimensions.smallTextSize,
    fontWeight: FontWeight.w500,
    color: CustomColor.labelColor,
  );
  static var tileDateTextStyle = TextStyle(
    fontSize: Dimensions.defaultTextSize,
    fontWeight: FontWeight.w600,
    color: CustomColor.labelColor,
  );
  static var tileBalanceTextStyle = TextStyle(
    fontSize: Dimensions.mediumTextSize,
    fontWeight: FontWeight.w600,
    color: CustomColor.primaryColor,
  );

  static var statusTextStyle = TextStyle(
    fontSize: Dimensions.smallTextSize,
    fontWeight: FontWeight.w700,
    color: CustomColor.white,
  );

  static var buttonTextStyle = TextStyle(
    fontSize: Dimensions.bigTextSize,
    fontWeight: FontWeight.w600,
    color: CustomColor.white,
  );

  // input fields text

  static var hintStyle = TextStyle(
    fontSize: Dimensions.mediumTextSize + 2,
    fontWeight: FontWeight.w600,
    color: CustomColor.borderColor,
  );
  static var labelStyle = TextStyle(
    fontSize: Dimensions.mediumTextSize,
    fontWeight: FontWeight.w500,
    color: CustomColor.labelColor,
  );
  static var focusedStyle = TextStyle(
    fontSize: Dimensions.mediumTextSize,
    fontWeight: FontWeight.w500,
    color: CustomColor.primaryColor,
  );
  static var inputTextStyle = TextStyle(
    fontSize: Dimensions.mediumTextSize,
    fontWeight: FontWeight.w600,
    color: CustomColor.textColor,
  );

  static var richPreTextStyle = TextStyle(
    fontSize: Dimensions.defaultTextSize,
    fontWeight: FontWeight.w500,
    color: CustomColor.textColor,
  );
  static var richTextStyle = TextStyle(
    fontSize: Dimensions.defaultTextSize,
    fontWeight: FontWeight.w500,
    color: CustomColor.primaryColor,
  );


  static var forgetTextStyle = TextStyle(
    fontSize: Dimensions.defaultTextSize,
    fontWeight: FontWeight.w500,
    color: CustomColor.redColor,
  );

  static var logoutTextStyle = TextStyle(
    fontSize: Dimensions.defaultTextSize + 2,
    fontWeight: FontWeight.w600,
    color: CustomColor.redColor,
  );

  static var drawerTileTextStyle = TextStyle(
    fontSize: Dimensions.defaultTextSize + 2,
    fontWeight: FontWeight.w600,
    color: CustomColor.textColor,
  );

  static var drawerNameTextStyle = TextStyle(
    fontSize: Dimensions.biggestTextSize,
    fontWeight: FontWeight.w700,
    color: CustomColor.textColor,
  );

  static var containerTitleStyle = TextStyle(
    fontSize: Dimensions.defaultTextSize,
    fontWeight: FontWeight.w500,
    color: CustomColor.white,
  );

  static var containerResultStyle = TextStyle(
    fontSize: Dimensions.mediumTextSize,
    fontWeight: FontWeight.w500,
    color: CustomColor.white,
  );

  static var checkTitleStyle = TextStyle(
    fontSize: Dimensions.defaultTextSize,
    fontWeight: FontWeight.w400,
    color: CustomColor.buttonTextColor,
  );
  static var checkSubTitleStyle = TextStyle(
    fontSize: Dimensions.defaultTextSize,
    fontWeight: FontWeight.w400,
    color: CustomColor.primaryColor,
  );



}

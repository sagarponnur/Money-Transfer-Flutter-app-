import 'package:flutter/material.dart';

import '../../utils/custom_color.dart';
import '../../utils/custom_style.dart';
import '../../utils/dimensions.dart';

class BorderButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const BorderButtonWidget({Key? key, required this.text, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: Dimensions.buttonHeight * 0.8,
        alignment: Alignment.center,

        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: CustomColor.borderColor
          ),
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(Dimensions.radius * 0.7),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: CustomStyle.borderButtonTextStyle,
        ),
      ),
    );
  }
}

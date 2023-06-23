import 'package:flutter/material.dart';

import '../../utils/custom_style.dart';
import '../../utils/dimensions.dart';

class PrimaryButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color color;
  const PrimaryButtonWidget({Key? key,
    required this.text,
    required this.onTap,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: Dimensions.buttonHeight * 0.8,
        alignment: Alignment.center,

        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(Dimensions.radius * 0.7),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: CustomStyle.buttonTextStyle,
        ),
      ),
    );
  }
}

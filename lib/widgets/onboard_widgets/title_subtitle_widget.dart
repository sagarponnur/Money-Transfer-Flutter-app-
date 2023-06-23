import 'package:flutter/material.dart';

import '../../utils/custom_style.dart';
import '../../utils/dimensions.dart';

class TitleSubTitleWidget extends StatelessWidget {
  final String title, subTitle;
  final TextAlign textAlign;
  final double horizontal;
  final CrossAxisAlignment crossAlignment;
  const TitleSubTitleWidget({
    Key? key,
    required this.title,
    required this.subTitle,
    this.horizontal = 1,
    this.textAlign = TextAlign.center,
    this.crossAlignment = CrossAxisAlignment.center,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: Dimensions.width * horizontal),
        child: Column(
          crossAxisAlignment: crossAlignment,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              textAlign: textAlign,
              style: CustomStyle.onboardTitleStyle,
            ),
            SizedBox(height: Dimensions.height * 0.8,),
            Text(
              subTitle,
              textAlign: textAlign,
              style: CustomStyle.onboardSubTitleStyle,
            )
          ],
        )
    );
  }
}

import 'package:flutter/material.dart';

import '../../utils/dimensions.dart';
import 'title_subtitle_widget.dart';



class OnboardContentWidget extends StatelessWidget {
   const OnboardContentWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  final String image, title, subTitle;
  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: Dimensions.height * 3),
        Expanded(
          flex: 5,
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: Dimensions.width * 6
            ),
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(image),
          ),
        ),
        Expanded(
          flex: 2,
            child: TitleSubTitleWidget(
              title: title,
              subTitle: subTitle,
              textAlign: TextAlign.center,
              horizontal: 3,
            )
        )
      ],
    );
  }


}

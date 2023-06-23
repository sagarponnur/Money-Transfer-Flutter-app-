import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GapSize extends StatelessWidget {

  final double height, width;
  const GapSize({
    Key? key,
    this.width = 0,
    this.height = 0
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height.h,
      width: width.w,
    );
  }
}

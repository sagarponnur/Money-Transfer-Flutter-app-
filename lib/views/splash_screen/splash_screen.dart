import 'package:flutter/material.dart';

import '../../utils/dimensions.dart';
import '../../utils/strings.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: Dimensions.width * 2
        ),
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.center,
        child: Image.asset(IconPath.splashLogoPath),
      ),
    );
  }
}

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/custom_color.dart';
import '../../utils/custom_style.dart';
import '../size.dart';

class CountryPickerWidget extends StatelessWidget {
  const CountryPickerWidget({
    Key? key,
    required this.text,
    this.onChanged,
  }) : super(key: key);

  final ValueChanged? onChanged;
  final String text;


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text.tr,
          style: CustomStyle.labelStyle
        ),
        const GapSize(height: 3),
        CountryCodePicker(
          dialogBackgroundColor:  CustomColor.white,
          padding: const EdgeInsets.all(0),
          textStyle: CustomStyle.inputTextStyle,
          onChanged: onChanged,
          backgroundColor: Colors.transparent,
          // onInit: (code) => {countryName = code?.name},
          initialSelection: 'United States',

          barrierColor: CustomColor.labelColor,
          showFlag: true,
          showCountryOnly: true,
          showOnlyCountryWhenClosed: true,
          showDropDownButton: true,
          alignLeft: true,
        ),
        Divider(
          thickness: 2,
          color: CustomColor.borderColor,
          height: 1,
        )
      ],
    );
  }
}

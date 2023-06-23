import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/custom_color.dart';
import '../../utils/custom_style.dart';
import '../../utils/dimensions.dart';
import '../size.dart';

class CustomDropDownWidget extends StatelessWidget {
  final Function(String?) onChanged;
  final List items;
  final String text;
  const CustomDropDownWidget({
    Key? key,
    required this.items,
    required this.text,
    required this.onChanged,
  }) : super(key: key);

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
        Theme(
          data: Theme.of(context).copyWith(
            buttonTheme: ButtonTheme.of(context).copyWith(
              alignedDropdown: true,
            ),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButtonFormField<String>(
                style:  TextStyle(
                    fontSize: Dimensions.bigTextSize,
                    fontWeight: FontWeight.w600,
                    color: CustomColor.textColor
                ),

                dropdownColor: CustomColor.white,
                focusColor: CustomColor.white,
                isExpanded: true,

                decoration: InputDecoration(

                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          width: 2,
                          color: CustomColor.borderColor
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          width: 2,
                          color: CustomColor.borderColor
                      ),
                    )
                ),

                iconDisabledColor: CustomColor.labelColor,
                iconEnabledColor: CustomColor.labelColor,

                value: items[0],
                items: items
                    .map((item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style:  CustomStyle.inputTextStyle,
                    )
                ))
                    .toList(),
                onChanged: onChanged
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../../utils/custom_color.dart';
import '../../utils/custom_style.dart';
import '../../utils/dimensions.dart';
import '../size.dart';

class PrimaryInputWidget2 extends StatefulWidget {
  final String hint, label, code;
  final int maxLines;
  final TextInputType keyBoardType;
  final TextEditingController controller;
  const PrimaryInputWidget2({
    Key? key,
    required this.controller,
    required this.hint,
    required this.label,
    this.keyBoardType = TextInputType.text,
     this.code = '',
     this.maxLines = 1,
  }) : super(key: key);

  @override
  State<PrimaryInputWidget2> createState() => _PrimaryInputWidget2State();
}

class _PrimaryInputWidget2State extends State<PrimaryInputWidget2> {

  FocusNode? focusNode;

  @override
  void initState() {
    super.initState();
    focusNode = FocusNode();
  }

  @override
  void dispose() {
      focusNode!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: focusNode!.hasFocus
              ? CustomStyle.focusedStyle
              : CustomStyle.labelStyle,
        ),
        const GapSize(height: 3),
        TextFormField(

          textInputAction: TextInputAction.next,
          keyboardType: widget.keyBoardType,
          controller: widget.controller,
          onTap: (){
            setState(() {
              focusNode!.requestFocus();
            });
          },
          onFieldSubmitted: (value){
            setState(() {
              focusNode!.unfocus();
            });
          },
          focusNode: focusNode,
          textAlign: TextAlign.left,
          style: CustomStyle.inputTextStyle,

          maxLines: widget.maxLines,
          decoration: InputDecoration(

            hintText: widget.hint,
            hintStyle: CustomStyle.hintStyle,

            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                width: 2,
                color: CustomColor.borderColor
              ),
            ),

            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  width: 2,
                  color: CustomColor.primaryColor
              ),
            ),





              prefixIcon: widget.code == ''
              ? null
              : Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "${widget.code}  ",
                    textAlign: TextAlign.center,
                    style: CustomStyle.hintStyle,
                  ),

                  Container(
                    width: 2,
                    height: Dimensions.height,
                    color: CustomColor.borderColor,
                  ),
                  const GapSize(
                    width: 3,
                  ),
                ],
              ),

          ),
        ),
      ],
    );
  }
}

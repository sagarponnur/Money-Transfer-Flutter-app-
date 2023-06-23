import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/custom_color.dart';
import '../../utils/custom_style.dart';
import '../../utils/dimensions.dart';
import '../size.dart';

class PrimaryInputWidget extends StatefulWidget {
  final String hint, label, icon, code;
  final int maxLines;
  final TextInputType keyBoardType;
  final TextEditingController controller;
  const PrimaryInputWidget({
    Key? key,
    required this.controller,
    required this.hint,
    required this.label,
    this.keyBoardType = TextInputType.text,
     this.icon = '',
     this.code = '',
     this.maxLines = 1,
  }) : super(key: key);

  @override
  State<PrimaryInputWidget> createState() => _PrimaryInputWidgetState();
}

class _PrimaryInputWidgetState extends State<PrimaryInputWidget> {

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


            contentPadding: EdgeInsets.symmetric(
              horizontal: Dimensions.width * 1,
              vertical: Dimensions.height * 0.9
            ),



            prefix: Text(
              "${widget.code} ",
              style: CustomStyle.hintStyle,
            ),
            prefixIcon: widget.icon == ''
                ? null
                : Padding(
                  padding:  EdgeInsets.symmetric(
                    horizontal: Dimensions.width
                  ),
                  child: SvgPicture.asset(
                      widget.icon,
                    color: focusNode!.hasFocus
                        ? CustomColor.primaryColor
                        : CustomColor.labelColor,
                  ),
                )

          ),
        ),
      ],
    );
  }
}

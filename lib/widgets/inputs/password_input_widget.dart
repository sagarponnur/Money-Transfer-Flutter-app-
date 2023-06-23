import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/custom_color.dart';
import '../../utils/custom_style.dart';
import '../../utils/dimensions.dart';
import '../../utils/strings.dart';
import '../size.dart';

class PasswordInputWidget extends StatefulWidget {
  final String hint, label;
  final bool notNeedIcon;
  final TextEditingController controller;
   const PasswordInputWidget({
    Key? key,
    required this.controller,
    required this.hint,
    required this.label,
     this.notNeedIcon = true,
  }) : super(key: key);


  @override
  State<PasswordInputWidget> createState() => _PasswordInputWidgetState();
}

class _PasswordInputWidgetState extends State<PasswordInputWidget> {

  FocusNode? focusNode;
  bool obscureText = true;


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

          obscureText: obscureText,

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


            prefixIcon: widget.notNeedIcon
                ? const Text('')
                : Padding(
                  padding:  EdgeInsets.symmetric(
                    horizontal: Dimensions.width
                  ),
                  child: SvgPicture.asset(
                      IconPath.passwordIconPath,
                    color: focusNode!.hasFocus
                        ? CustomColor.primaryColor
                        : CustomColor.labelColor,
                  ),
                ),

            suffixIcon: IconButton(
              onPressed: (){
                setState(() {
                  obscureText = !obscureText;
                });
              },
              icon: SvgPicture.asset(
                  IconPath.eyeIconPath
              ),
            )

          ),
        ),
      ],
    );
  }
}

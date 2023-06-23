import 'package:flutter/material.dart';

import '../../utils/custom_color.dart';
import '../../utils/custom_style.dart';
import '../../utils/dimensions.dart';
import '../../utils/strings.dart';

class SearchWidget extends StatefulWidget {
  final TextEditingController controller;
  const SearchWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {

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
        TextFormField(

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

          decoration: InputDecoration(

            hintText: Strings.enterYourPaymentNumber,
            hintStyle: CustomStyle.hintStyle,

            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimensions.radius * 0.7),
              borderSide: BorderSide(
                width: 2,
                color: CustomColor.borderColor
              ),
            ),

            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimensions.radius * 0.7),
              borderSide: BorderSide(
                  width: 2,
                  color: CustomColor.primaryColor
              ),
            ),

              prefixIcon: const Icon(Icons.search)

          ),
        ),
      ],
    );
  }
}

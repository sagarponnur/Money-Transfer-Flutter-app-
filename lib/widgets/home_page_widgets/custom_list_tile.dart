import 'package:flutter/material.dart';

import '../../models/recipients_model.dart';
import '../../utils/custom_style.dart';
import '../../utils/dimensions.dart';

class CustomListTile extends StatelessWidget {
  final RecipientsModel data;
  const CustomListTile({
    Key? key,
    required this.data
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
          radius: Dimensions.radius * 2.5,
          backgroundImage: AssetImage(data.image)
      ),

      title: Text(
        data.name,
        style: CustomStyle.nameTitleTextStyle,
      ),

      subtitle: Text(
        data.email,
        style: CustomStyle.labelStyle,
      ),
    );
  }
}

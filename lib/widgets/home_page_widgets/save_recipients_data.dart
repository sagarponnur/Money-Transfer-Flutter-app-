import 'package:flutter/material.dart';

import '../../models/recipients_model.dart';
import '../../utils/custom_color.dart';
import 'custom_list_tile.dart';

class SavedRecipientsData extends StatelessWidget {
  const SavedRecipientsData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (_, index){
        var data = recipientsModelData[index];
        return CustomListTile(
            data: data
        );
      },
      separatorBuilder: (_, index){
        return Divider(
          thickness: 1,
          height: 1,
          color: CustomColor.primaryColor.withOpacity(0.15),
        );
      },
      itemCount: recipientsModelData.length,
    );
  }
}

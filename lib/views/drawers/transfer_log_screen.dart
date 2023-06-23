import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:xremit/utils/dimensions.dart';

import '../../models/transfer_log_model.dart';
import '../../utils/custom_color.dart';
import '../../utils/custom_style.dart';
import '../../utils/strings.dart';
import '../../widgets/appbar/appbar_widget.dart';
import '../../widgets/size.dart';

class TransferLogScreen extends StatelessWidget {
  const TransferLogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.white,
      appBar: AppBarWidget(
        appTitle: Strings.transferLog,
      ),

      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return ListView.separated(
      itemBuilder: (_, index){
        var data = transferLogModelData[index];
        return ListTile(
          
          leading: CircleAvatar(
              child: SvgPicture.asset(IconPath.send1IconPath)
          ),
          title: FittedBox(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "TN-${data.tn}",
                  style: CustomStyle.nameTitleTextStyle,
                ),
                const GapSize(width: 5),

                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: Dimensions.width * 0.5,
                    vertical: Dimensions.height * 0.1
                  ),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius * 0.3),
                    color: data.status == 'Completed'
                        ? CustomColor.greenColor
                        : data.status == 'Pending'
                          ? CustomColor.orangeColor
                          : CustomColor.redColor
                  ),

                  child: Text(
                    data.status,
                    style: CustomStyle.statusTextStyle,
                  ),
                )
              ],
            ),
          ),

          subtitle: Text(
            data.email,
            style: CustomStyle.labelStyle,
          ),

          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                data.date,
                style: CustomStyle.tileDateTextStyle,
              ),
              Text(
                "${data.balance.toStringAsFixed(2)} ${data.currency}",
                style: CustomStyle.tileBalanceTextStyle,
              ),
            ],
          ),
        );
      },
      separatorBuilder: (_, index){
        return Divider(
          thickness: 1,
          height: 1,
          color: CustomColor.primaryColor.withOpacity(0.15),
        );
      },
      itemCount: transferLogModelData.length,

    );
  }
}

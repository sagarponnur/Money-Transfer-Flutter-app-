import 'package:flutter/material.dart';
import 'package:xremit/utils/dimensions.dart';

import '../../utils/custom_color.dart';
import '../../utils/strings.dart';
import '../../widgets/appbar/appbar_widget.dart';
import '../../widgets/inputs/search_widget.dart';
import '../../widgets/onboard_widgets/primary_button_widget.dart';
import '../../widgets/size.dart';

class TrackTransactionScreen extends StatelessWidget {
 TrackTransactionScreen({Key? key}) : super(key: key);

  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.white,
      appBar: AppBarWidget(
        appTitle: Strings.trackYourTransaction,
      ),


      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Dimensions.width,
        vertical: Dimensions.height
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
            SearchWidget(
              controller: searchController,
            ),

          const GapSize(height: 10),

          SizedBox(
            width: MediaQuery.of(context).size.width * 0.45,
            child: PrimaryButtonWidget(
              color: CustomColor.primaryColor,
              text: Strings.search,
              onTap: (){

              },
            ),
          ),

        ],
      ),
    );
  }
}

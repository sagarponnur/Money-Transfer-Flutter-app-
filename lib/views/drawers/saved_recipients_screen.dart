import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../routes/routes.dart';
import '../../utils/custom_color.dart';
import '../../utils/strings.dart';
import '../../widgets/appbar/appbar_widget.dart';
import '../../widgets/home_page_widgets/save_recipients_data.dart';

class SavedRecipientsScreen extends StatelessWidget {
  const SavedRecipientsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.white,
      appBar: AppBarWidget(
        appTitle: Strings.savedRecipients,
      ),

      body: _bodyWidget(context),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Get.toNamed(Routes.addRecipients);
        },
        child: SvgPicture.asset(IconPath.addRecipientsIconPath),
      ),
    );
  }

  _bodyWidget(BuildContext context) {
    return ListView(
      children: const [
        SavedRecipientsData(),
      ],
    );
  }
}

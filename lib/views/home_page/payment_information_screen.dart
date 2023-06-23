import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/home/money_transfer_controller.dart';
import '../../utils/custom_color.dart';
import '../../utils/custom_style.dart';
import '../../utils/dimensions.dart';
import '../../utils/strings.dart';
import '../../widgets/home_page_widgets/custom_dropdown_widget.dart';
import '../../widgets/size.dart';

class PaymentInformationScreen extends GetView<MoneyTransferController> {
  const PaymentInformationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColor.white,
      padding: EdgeInsets.symmetric(
          horizontal: Dimensions.width,
          vertical: Dimensions.height
      ),

      child: ListView(
        children: [
          Text(
            Strings.paymentInformation,
            style: CustomStyle.homeScreenTitleStyle,
          ),

          const GapSize(
            height: 20,
          ),

          CustomDropDownWidget(
            text: Strings.sendingPurpose,
            items: controller.sendingPurpose,
            onChanged: (value){
              controller.sendingPurposeText.value = value!;
            },
          ),

          const GapSize(
            height: 20,
          ),

          CustomDropDownWidget(
            text: Strings.sourceOfFund,
            items: controller.sourceOfFund,
            onChanged: (value){
              controller.sourceOfFundText.value = value!;
            },
          ),

          const GapSize(
            height: 20,
          ),

          CustomDropDownWidget(
            text: Strings.selectPaymentGateway,
            items: controller.selectPayment,
            onChanged: (value){
              controller.selectPaymentText.value = value!;
            },
          ),

        ],
      ),
    );
  }
}

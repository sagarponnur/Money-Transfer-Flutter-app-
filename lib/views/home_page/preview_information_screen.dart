import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/home/money_transfer_controller.dart';
import '../../utils/custom_color.dart';
import '../../utils/custom_style.dart';
import '../../utils/dimensions.dart';
import '../../utils/strings.dart';
import '../../widgets/size.dart';

class PreviewInformationScreen extends GetView<MoneyTransferController> {
  const PreviewInformationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColor.white,
      padding: EdgeInsets.symmetric(
          vertical: Dimensions.height
      ),

      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Dimensions.width
            ),
            child: Text(
              Strings.preview,
              style: CustomStyle.homeScreenTitleStyle,
            ),
          ),

          const GapSize(
            height: 20,
          ),

          _amountInformation(),

          const GapSize(
            height: 20,
          ),

          _recipientInformation(),

          const GapSize(
            height: 20,
          ),

          _paymentInformation(),
        ],
      ),
    );
  }

  _amountInformation() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        _line(Strings.amountInformation),

        _rowText(Strings.sendingCountry, controller.sendingCountryName.value),
        _rowText(Strings.receivingCountry, controller.receivingCountryName.value),
        _rowText(Strings.receivingMethod, controller.receivingMethodText.value),

        _rowText(Strings.youTransfer, "${controller.transferTextController.text} USD"),
        _rowText(Strings.recipientGets,
            "${controller.recipientTextController.text} ${controller.exchangeRateCurrency}"),

        _rowText(Strings.transferFee, "${controller.getTransferFee().value.toStringAsFixed(2)} USD"),
        _rowText(Strings.exchangeRate,
            "1 USD = ${controller.exchangeRate.value} ${controller.exchangeRateCurrency}"),

      ],
    );
  }

  _recipientInformation() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _line(Strings.recipientInformation),
        _rowText(Strings.recipientName, controller.data!.name),
        _rowText(Strings.recipientEmail, controller.data!.email),
      ],
    );
  }

  _paymentInformation() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _line(Strings.paymentInformation),
        _rowText(Strings.sendingPurpose, controller.sendingPurposeText.value),
        _rowText(Strings.sourceOfFund, controller.sourceOfFundText.value),
        _rowText(Strings.paymentGateway, controller.selectPaymentText.value),
      ],
    );
  }

  _line(String text) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Dimensions.width
          ),
          child: Text(
            text,
            style: CustomStyle.previewTextStyle1,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: Dimensions.height
          ),
          child: Divider(
            thickness: 1,
            height: 1,
            color: CustomColor.primaryColor.withOpacity(0.15),
          ),
        ),
      ],
    );
  }

  _rowText(String text1, String text2) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: Dimensions.width,
        vertical: Dimensions.height * 0.3
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text1,
            style: CustomStyle.previewTextStyle2,
          ),
          Text(
            text2,
            style: CustomStyle.previewTextStyle1,
          )
        ],
      ),
    );
  }


}

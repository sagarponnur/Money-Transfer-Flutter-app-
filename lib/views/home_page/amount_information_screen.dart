import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/home/money_transfer_controller.dart';
import '../../utils/custom_color.dart';
import '../../utils/custom_style.dart';
import '../../utils/dimensions.dart';
import '../../utils/strings.dart';
import '../../widgets/home_page_widgets/custom_dropdown_widget.dart';
import '../../widgets/inputs/transfer_input_widget.dart';
import '../../widgets/size.dart';

class AmountInformationScreen extends GetView<MoneyTransferController> {
   const AmountInformationScreen({Key? key}) : super(key: key);

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
            Strings.amountInformation,
            style: CustomStyle.homeScreenTitleStyle,
          ),

          const GapSize(
            height: 20,
          ),

          CustomDropDownWidget(
            text: Strings.sendingCountry,
            items: controller.countryList,
            onChanged: (value){
              controller.transferTextController.clear();
              controller.recipientTextController.clear();
              controller.containerVisibility.value = false;
              controller.sendingCountryName.value = value!;
            },
          ),

          const GapSize(
            height: 20,
          ),

          CustomDropDownWidget(
            text: Strings.receivingCountry,
            items: controller.countryList,
            onChanged: (value){
              controller.transferTextController.clear();
              controller.recipientTextController.clear();
              controller.containerVisibility.value = false;
              controller.receivingCountryName.value = value!;
            },
          ),

          const GapSize(
            height: 20,
          ),

          CustomDropDownWidget(
            text: Strings.receivingMethod,
            onChanged: (value){
              controller.transferTextController.clear();
              controller.recipientTextController.clear();
              controller.containerVisibility.value = false;
              controller.receivingMethodText.value = value!;
            },
            items: controller.receivingMethod,
          ),

          const GapSize(
            height: 20,
          ),

         Obx(() =>  Visibility(
           visible: controller.receivingMethodText.value == controller.receivingMethod[0],
           child: Column(
             children: [
               CustomDropDownWidget(
                 text: Strings.payoutPartner,
                 onChanged: (value){
                   controller.transferTextController.clear();
                   controller.recipientTextController.clear();
                   controller.containerVisibility.value = false;
                   controller.payoutPartnerText.value = value!;
                 },
                 items: controller.payoutPartner,
               ),

               const GapSize(
                 height: 20,
               ),
             ],
           ),
         )),

         Obx(() => TransferInputWidget(
            controller: controller.transferTextController,
            label: Strings.youTransfer,
            onChanged: (value){
              controller.setExchangeRate(value);
            },
            suffixWidget: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/flag/${controller.sendingCountryName.value}.png'
                  ),
                  radius: Dimensions.radius * 1.2,
                ),

                const GapSize(
                  width: 5,
                ),

                Text(
                  'USD',
                  style: CustomStyle.inputTextStyle,
                )
              ],
            ),
          )),

          const GapSize(
            height: 10,
          ),

          _midContainer(),

          const GapSize(
            height: 10,
          ),

          Obx(() => TransferInputWidget(
            readOnly: true,
            controller: controller.recipientTextController,
            label: Strings.recipientGets,
            suffixWidget: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(
                      'assets/flag/${controller.receivingCountryName.value}.png'
                  ),
                  radius: Dimensions.radius * 1.2,
                ),

                const GapSize(
                  width: 5,
                ),

                Text(
                  controller.exchangeRateCurrency.value,
                  style: CustomStyle.inputTextStyle,
                )
              ],
            ),
          )),



          const GapSize(
            height: 20,
          ),

        ],
      ),
    );
  }

   _midContainer() {
    return Obx(() => Visibility(
          visible: controller.containerVisibility.value,
          child: Container(
            height: Dimensions.height * 7,
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              horizontal: Dimensions.width * 2,
              vertical: Dimensions.height
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(IconPath.noteBG)
              )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Strings.transferFee,
                      style: CustomStyle.containerTitleStyle,
                    ),
                    Text(
                      Strings.exchangeRate,
                      style: CustomStyle.containerTitleStyle,
                    ),
                  ],
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Obx(() => Text(
                      "${controller.getTransferFee().value.toStringAsFixed(2)} USD",
                      style: CustomStyle.containerResultStyle,
                    )),
                    Obx(() => Text(
                      '1 USD = ${controller.exchangeRate} ${controller.exchangeRateCurrency.value}',
                      style: CustomStyle.containerResultStyle,
                    )),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/home/money_transfer_controller.dart';
import '../../models/recipients_model.dart';
import '../../utils/custom_color.dart';
import '../../utils/custom_style.dart';
import '../../utils/dimensions.dart';
import '../../utils/strings.dart';
import '../../widgets/home_page_widgets/custom_list_tile.dart';
import '../../widgets/inputs/transfer_input_widget.dart';
import '../../widgets/size.dart';

class RecipientInformationScreen extends GetView<MoneyTransferController> {
  const RecipientInformationScreen({Key? key}) : super(key: key);

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
            Strings.recipientInformation,
            style: CustomStyle.homeScreenTitleStyle,
          ),

          const GapSize(
            height: 20,
          ),

          TransferInputWidget(
            readOnly: true,
            controller: controller.selectRecipientController,
            label: Strings.selectRecipient,
            hintText: Strings.selectRecipientInfo,
            onTap: (){
              _showSavedRecipients(context);
            },
            suffixWidget: const Icon(Icons.arrow_drop_down),
          ),

          const GapSize(
            height: 20,
          ),

          _addNewRecipients(),
        ],
      ),
    );
  }

  _addNewRecipients() {
    return InkWell(
      onTap: (){
        controller.addRecipients();
      },
      child: Container(
        height: Dimensions.height * 4,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.radius * 0.7),
          border: Border.all(
            width: 2,
            color: CustomColor.primaryColor,
          )
        ),
        alignment: Alignment.center,

        child: Text(
            Strings.addNewRecipient,
          style: TextStyle(
            color: CustomColor.primaryColor,
            fontSize: Dimensions.buttonTextSize,
            fontWeight: FontWeight.w600
          ),
        ),
      ),
    );
  }

  void _showSavedRecipients(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context){
          return SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: Dimensions.width,
                vertical: Dimensions.height
              ),
              width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimensions.radius * 2),
                    topLeft: Radius.circular(Dimensions.radius * 2),
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Strings.savedRecipients,
                      style: CustomStyle.homeScreenTitleStyle,
                    ),


                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: Dimensions.height
                      ),
                      child: Divider(
                        thickness: 2,
                        height: 2,
                        color: CustomColor.primaryColor.withOpacity(0.15),
                      ),
                    ),


                    ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (_, index){
                        var data = recipientsModelData[index];
                        return InkWell(
                          onTap: (){
                            controller.data = data;
                            controller.selectRecipientController.text = data.name;
                          },
                          child: CustomListTile(
                              data: data
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
                      itemCount: recipientsModelData.length,
                    ),
                  ],
                )
            ),
          );
        }
    );
  }
}

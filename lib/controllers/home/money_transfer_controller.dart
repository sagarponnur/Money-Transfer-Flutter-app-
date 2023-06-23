import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/recipients_model.dart';
import '../../routes/routes.dart';

class MoneyTransferController extends GetxController{
  RxString sendingCountryName = 'Australia'.obs;
  RxString receivingCountryName = 'Australia'.obs;
  List<String> countryList = [
    'Australia',
    'Bangladesh',
    'Canada',
    'China',
    'Europe',
    'France',
    'German',
    'India',
    'Ireland',
    'Italy',
    'Japan',
    'Netherlands',
    'Pakistan',
    'United Kingdom',
    'United States'
  ];


  final transferTextController = TextEditingController();
  final recipientTextController = TextEditingController();
  final selectRecipientController = TextEditingController();

  @override
  void dispose() {
    transferTextController.dispose();
    recipientTextController.dispose();
    selectRecipientController.dispose();
    super.dispose();
  }

  RecipientsModel? data;
  @override
  void onInit() {
    selectRecipientController.text = recipientsModelData[0].name;
    data = recipientsModelData[0];
    super.onInit();
  }

  RxString receivingMethodText = 'Deposit to Bank Account'.obs;
  List<String> receivingMethod = [
    'Deposit to Bank Account',
    'Cash Pick Up'
  ];

  RxBool containerVisibility = false.obs;

  RxString payoutPartnerText = 'United Commercial Bank'.obs;
  List<String> payoutPartner = [
    'United Commercial Bank',
    'BKash',
    'Nagad',
    'Rocket'
  ];

  RxDouble transferFee = 0.0.obs;
  RxDouble getTransferFee(){
    if(receivingMethodText.value == 'Deposit to Bank Account'){
      return 2.0.obs;
    }else{
      return 0.0.obs;
    }
  }
  RxDouble exchangeRate = 1.59.obs;
  RxString exchangeRateCurrency = 'AUD'.obs;

  void setExchangeRate(String value) {
    double getValue = double.parse(value);

    switch (receivingCountryName.value){
      case 'Australia':
        exchangeRate.value = 1.59;
        exchangeRateCurrency.value = 'AUD';
        break;
      case 'Bangladesh':
        exchangeRate.value = 105.37;
        exchangeRateCurrency.value = 'BDT';
        break;
      case 'Canada':
        exchangeRate.value = 1.38;
        exchangeRateCurrency.value = 'CAD';
        break;
      case 'China':
        exchangeRate.value = 7.22;
        exchangeRateCurrency.value = 'CNY';
        break;
      case 'Europe':
        exchangeRate.value = 1.02;
        exchangeRateCurrency.value = 'EUR';
        break;
      case 'France':
        exchangeRate.value = 6.66;
        exchangeRateCurrency.value = 'FRF';
        break;
      case 'German':
        exchangeRate.value = 2.01;
        exchangeRateCurrency.value = 'DEM';
        break;
      case 'India':
        exchangeRate.value = 82.37;
        exchangeRateCurrency.value = 'INR';
        break;
      case 'Ireland':
        exchangeRate.value = 0.809;
        exchangeRateCurrency.value = 'IEP';
        break;
      case 'Italy':
        exchangeRate.value = 1991.39;
        exchangeRateCurrency.value = 'ITL';
        break;
      case 'Japan':
        exchangeRate.value = 149.43;
        exchangeRateCurrency.value = 'JPY';
        break;
      case 'Netherlands':
        exchangeRate.value = 1.80;
        exchangeRateCurrency.value = 'ANG';
        break;
      case 'Pakistan':
        exchangeRate.value = 218.69;
        exchangeRateCurrency.value = 'PKR';
        break;
      case 'United Kingdom':
        exchangeRate.value = 0.89;
        exchangeRateCurrency.value = 'GBP';
        break;
      case 'United States':
        exchangeRate.value = 1.0;
        exchangeRateCurrency.value = 'USD';
        break;
    }

    recipientTextController.text = (getValue * exchangeRate.value).toString();
    containerVisibility.value = true;
  }

  void addRecipients() {
    Get.toNamed(Routes.addRecipients);
  }


  RxString sendingPurposeText = 'Gift'.obs;
  List<String> sendingPurpose = [
    'Gift',
    'Birthday',
    'Weeding',
    'Anniversary',
    'Congratulations',
    'Good Luck',
    'Thank You',
    'Salary',
    'Installments',
    'Rent',
    'Revenue',
  ];

  RxString sourceOfFundText = 'Retained Earnings'.obs;
  List<String> sourceOfFund = [
    'Retained Earnings',
    'Debt Capital',
    'Equity Capital'
  ];

  RxString selectPaymentText = 'Paypal'.obs;
  List<String> selectPayment = [
    'Paypal',
    'Card',
    'Bank'
  ];

}
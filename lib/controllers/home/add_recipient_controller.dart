import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:file_picker/file_picker.dart';

import '../../models/recipients_model.dart';
import '../../utils/strings.dart';


class AddRecipientController extends GetxController{
  final recipientNameController = TextEditingController();
  final recipientEmailController = TextEditingController();
  final recipientCityController = TextEditingController();
  final recipientZipCodeController = TextEditingController();
  final additionalAddressController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final dobController = TextEditingController();


  RxString countryCode = '+1'.obs;
  RxString countryName = 'United States'.obs;
  @override
  void dispose() {
    recipientNameController.dispose();
    recipientEmailController.dispose();
    recipientCityController.dispose();
    recipientZipCodeController.dispose();
    additionalAddressController.dispose();
    phoneNumberController.dispose();
    dobController.dispose();
    super.dispose();
  }

  RxString genderText = 'Male'.obs;
  List gender = [
    'Male',
    'Female',
    'Others'
  ];

  RxString relationText = 'Familial Relationships'.obs;
  List relation = [
    'Familial Relationships',
    'Friendships',
    'Acquaintances',
    'Acquaintances',
    'Work/Professional Relationships',
    'Teacher/Student Relationships',
    'Community/Group Relationships',
    'Place-based Relationships',
    'Landlord/Tenant Relationships'
  ];


  late PlatformFile bulkFile;
  RxString bulkFileName = ''.obs;
  void bulkUploadByCSV(BuildContext context) async{
    bulkFile = (await pickFile())! ;
    bulkFileName.value = bulkFile.name;
  }

  Future<PlatformFile?> pickFile() async{
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      // File? file = File(result.files.single.path!);
      PlatformFile filePath = result.files.first;
      return filePath;
    } else {
      return null;
    }
  }

  void addRecipient() {
    recipientsModelData.add(
      RecipientsModel(
          image: IconPath.userPath,
          name: recipientNameController.text,
          email: recipientEmailController.text,
          number: phoneNumberController.text,
          additionalAddress: additionalAddressController.text,
        city: recipientCityController.text,
        zipCode: recipientZipCodeController.text,
        dob: dobController.text,
        country: countryName.value,
        gender: genderText.value,
        relationShip: relationText.value
      )
    );
    Get.back();
  }
}
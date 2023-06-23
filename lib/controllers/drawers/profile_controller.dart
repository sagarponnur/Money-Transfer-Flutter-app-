import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../routes/routes.dart';

class ProfileController extends GetxController{
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNumberController = TextEditingController();

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    phoneNumberController.dispose();
    super.dispose();
  }

  @override
  void onInit() {
    firstNameController.text = 'Jhon';
    lastNameController.text = 'Abraham';
    emailController.text = 'jhonabraham@gmail.com';
    phoneNumberController.text = '639 8963 215';
    super.onInit();
  }

  RxString code = '+1'.obs;

  void updateMethod() {
    Get.offNamedUntil(Routes.homeScreen, (route) => false);
  }

  void uploadImage(BuildContext context) {
    chooseImage(context);
  }

  File? image;
  ImagePicker picker = ImagePicker();

  chooseImage(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: const Text("Choose Image from"),
            children: [
              SimpleDialogOption(
                child: const Text("Choose from Gallery"),
                onPressed: () {
                  chooseImageFromGallery();
                },
              ),
              SimpleDialogOption(
                child: const Text("Choose from Camera"),
                onPressed: () {
                  chooseImageFromCamera();
                },
              ),
              SimpleDialogOption(
                child: const Text("Cancel"),
                onPressed: () {
                  Get.back();
                },
              ),
            ],
          );
        }
    );
  }


  RxString imagePath = 'NULL'.obs;

  chooseImageFromGallery() async {
    try{
      var pickImage = await picker.pickImage(source: ImageSource.gallery);
      image = File(pickImage!.path);
      imagePath.value = image!.path;
      Get.back();
    }catch(e){
      // print(e);
    }
  }


  chooseImageFromCamera() async {
    try{
      var pickImage = await picker.pickImage(source: ImageSource.camera);
      image = File(pickImage!.path);
      imagePath.value = image!.path;
      Get.back();
    }catch(e){
      // print(e);
    }
  }

}
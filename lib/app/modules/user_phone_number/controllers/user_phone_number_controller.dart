import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserPhoneNumberController extends GetxController {
  //TODO: Implement UserPhoneNumberController

  final phoneController = TextEditingController();
  String helperTextMessage = '';

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  sendToLogin(){
    Get.toNamed('/otp-verify',arguments: phoneController.text);
  }

  bool isValidNumber(){
    if(phoneController.text.length < 9){
      update();
      return false;
    }
    else{
      update();
      return true;
    }
  }

  checkFieldEntry(){
    if(phoneController.text.length < 10){
      helperTextMessage = 'This is not a valid phone number';
      print(helperTextMessage);
      print(phoneController.text.length);

    }
    else{
      sendToLogin();
    }
  }

}

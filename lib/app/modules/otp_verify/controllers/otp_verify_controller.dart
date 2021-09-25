import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtpVerifyController extends GetxController {
  //TODO: Implement OtpVerifyController

  final otpController = TextEditingController();
  final FocusNode otpFocusNode = FocusNode();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  late String _verificationCode;

  final BoxDecoration pinPutDecoration = BoxDecoration(
    color: Color.fromRGBO(238, 242, 245, 1),
    borderRadius: BorderRadius.circular(50.0),
  );


  @override
  void onInit() {
    super.onInit();
    verificationOfPhoneNumber();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  verificationOfPhoneNumber() async {
    await _auth.verifyPhoneNumber(
        phoneNumber: '+92${Get.arguments}',
        verificationCompleted: (credential) async {
          await _auth.signInWithCredential(credential).then((value) async {
            if (value.user != null) {
              Get.offAllNamed('/home');
            }
          });
        },
        verificationFailed: (verificationFailed) async {
          print(verificationFailed.message);
          Get.defaultDialog(
              title: 'Error', middleText: verificationFailed.message!);
        },
        codeSent: (verificationId, resendingToken) async {
          _verificationCode = verificationId;
          print('Code Sent');
        },
        codeAutoRetrievalTimeout: (verificationId) async {});
  }

  otpVerify(String pin) async {
    pin = otpController.text;
    try {
      await _auth
          .signInWithCredential(PhoneAuthProvider.credential(
          verificationId: _verificationCode, smsCode: pin))
          .then((value) async {
        if(value.user != null){
          Get.offAllNamed('/home');
        }
      });
    } catch (e) {
      print(e);
    }
  }

}

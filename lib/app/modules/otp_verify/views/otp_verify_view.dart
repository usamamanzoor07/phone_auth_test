import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:pinput/pin_put/pin_put.dart';

import '../controllers/otp_verify_controller.dart';

class OtpVerifyView extends GetView<OtpVerifyController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OtpVerifyView'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Verify Your Phone Number',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                'Enter Your OTP code here',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),

              // TextField(
              //   controller: controller.otpController,
              //   keyboardType: TextInputType.number,
              //   obscureText: true,
              //   maxLength: 6,
              //   decoration: InputDecoration(
              //     hintText: 'Enter OTP',
              //   ),
              // ),

              Padding(
                padding: const EdgeInsets.all(30.0),
                child: PinPut(
                  fieldsCount: 6,
                  textStyle: const TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  eachFieldWidth: 30.0,
                  eachFieldHeight: 30.0,
                  focusNode: controller.otpFocusNode,
                  controller: controller.otpController,
                  submittedFieldDecoration:
                      controller.pinPutDecoration.copyWith(color: Colors.green),
                  selectedFieldDecoration: controller.pinPutDecoration.copyWith(
                    border: Border.all(
                      width: 2.5,
                      color: Colors.green,
                    ),
                  ),
                  followingFieldDecoration: controller.pinPutDecoration,
                  pinAnimationType: PinAnimationType.scale,
                  onSubmit: (pin)  {controller.otpVerify(pin);}
                      //(pin) {},
                ),
              ),

              SizedBox(
                height: 20,
              ),

              // ElevatedButton(
              //     child: Text('Verify'),
              //     onPressed: (){controller.otpVerify(controller.otpController.text);},
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

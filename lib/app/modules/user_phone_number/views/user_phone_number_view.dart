import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:country_icons/country_icons.dart';

import '../controllers/user_phone_number_controller.dart';

class UserPhoneNumberView extends GetView<UserPhoneNumberController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Welcome to My App',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                'Please Enter Your Phone Number. \nWe will send you a code to verify',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 50,
              ),
              TextField(
                controller: controller.phoneController,
                keyboardType: TextInputType.phone,
                maxLength: 10,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal)),
                    hintText: 'Enter Here',
                    helperText: controller.helperTextMessage,
                    helperStyle: controller.isValidNumber()
                        ? TextStyle(color: Colors.green)
                        : TextStyle(color: Colors.red),
                    labelText: 'Phone Number',
                    prefixIcon: Image.asset(
                      'icons/flags/png/pk.png',
                      package: 'country_icons',
                      scale: 2.5,
                    ),
                    prefixText: '+92 ',
                    suffixText: ' ',
                    suffixStyle: const TextStyle(color: Colors.green)),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  child: Text(
                    'Send OTP Code',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onPressed: controller.checkFieldEntry,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

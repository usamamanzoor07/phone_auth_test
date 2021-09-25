import 'package:flutter/material.dart';
import 'package:pinput/pin_put/pin_put.dart';

class OtpAnimatedTextField {
  final ValueChanged<String> onSubmit;
  final FocusNode focusNode;
  final TextEditingController controller;
  OtpAnimatedTextField({
    required this.onSubmit,
    required this.focusNode,
    required this.controller,
  });

  Widget boxedPinPutWithPreFilledSymbol() {
    final BoxDecoration pinPutDecoration = BoxDecoration(
      color: const Color.fromRGBO(119, 125, 226, 1),
      borderRadius: BorderRadius.circular(5.0),
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3.0),
        border: Border.all(color: Colors.white),
      ),
      padding: const EdgeInsets.all(20.0),
      child: PinPut(
        withCursor: true,
        fieldsCount: 5,
        preFilledWidget: FlutterLogo(),
        textStyle: const TextStyle(fontSize: 25.0, color: Colors.white),
        eachFieldWidth: 50.0,
        eachFieldHeight: 50.0,
        onSubmit: (String pin) => onSubmit(pin),
        focusNode: focusNode,
        controller: controller,
        submittedFieldDecoration: pinPutDecoration,
        selectedFieldDecoration: pinPutDecoration.copyWith(color: Colors.white),
        followingFieldDecoration: pinPutDecoration,
      ),
    );
  }
}

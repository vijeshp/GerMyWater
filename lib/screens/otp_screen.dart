import 'package:flutter/material.dart';
import 'package:getmywater/constants.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:getmywater/screens/add_address_screen.dart';
class OTPverification extends StatelessWidget {
  static const String id = 'OTP';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OTPTextField(
          length: 4,
          width: MediaQuery.of(context).size.width,
          fieldWidth: 40,
          style: TextStyle(
              fontSize: 20
          ),
          textFieldAlignment: MainAxisAlignment.spaceAround,
          fieldStyle: FieldStyle.underline,
          onCompleted: (pin) {
            Navigator.pushReplacementNamed(context, AddLocation.id);
          },
        ),
      ),
    );
  }
}
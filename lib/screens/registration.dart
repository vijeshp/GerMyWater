import 'dart:async';

import 'package:flutter/material.dart';
import 'package:getmywater/constants.dart';
import 'package:getmywater/components/rounded_button.dart';
import 'package:getmywater/network/model/User.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:developer' as developer;
import 'package:modal_progress_hud/modal_progress_hud.dart';

class Registration extends StatefulWidget {
  static const String id = 'Registration';
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}


class _RegistrationScreenState extends State<Registration> {
  String phoneNumber;
  bool showSpinner = false;
  bool isValidPhoneNUmber = false;

  @override
    Widget build(BuildContext context) {
      return Scaffold(
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        opacity: 0.1,
        color:Colors.grey,
        progressIndicator: CircularProgressIndicator(),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: TextField(
                keyboardType: TextInputType.numberWithOptions(signed: false,decimal: false),
                textAlign: TextAlign.center,
                onChanged: (value) {
                   phoneNumber = value;
                  if (phoneNumber.length == 10)
                    isValidPhoneNUmber = true;
                  else
                    isValidPhoneNUmber = false;
                  setState(() {
                   });
                },
                decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Enter your phone number'),
              ),
            ),
            RoundedButton(
              title: 'Register',
              colour: isValidPhoneNUmber ? Colors.blueAccent : Colors.grey,
              onPressed: !isValidPhoneNUmber ? null : () {
                FocusScope.of(context).requestFocus(FocusNode());
                setState(() {
                  showSpinner = true;
                });
                Timer(Duration(seconds: 3),
                        ()=> {
                        Navigator.pushReplacementNamed(context, OTPverification.id)
                        }
                );
                fetchAlbum();
              //  Navigator.pushNamed(context, OTPverification.id);
              },
            ),


          ],
        )),
      ),
    );
  }
  Future<User> fetchAlbum() async {
    final response = await http.get(Uri.https('jsonplaceholder.typicode.com', 'albums/1'));
    if (response.statusCode == 200) {
      var kk =  User.fromJson(jsonDecode(response.body));
      developer.log("vijesh id="+kk.title);
    } else {
      throw Exception('Failed to load album');
    }
    }


}

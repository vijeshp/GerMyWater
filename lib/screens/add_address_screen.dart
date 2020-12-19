import 'package:getmywater/model/location_helper.dart';
import 'package:flutter/material.dart';
import 'package:getmywater/screens/homescreen.dart';

import '../constants.dart';

class AddLocation extends StatefulWidget {
  static const String id = 'add_location';

  @override
  createState() => _AddLocation();
}

class _AddLocation extends State<AddLocation> {
  @override
  void initState() {
    super.initState();
  }

  /*   TextField(decoration: kTextFieldDecoration.copyWith(
                      hintText: 'Room'))*/
  @override
  Widget build(BuildContext context) {
    LocationHelper.getCurrentPosition();

    return SafeArea(
      child: Scaffold(
          body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Enter your Delivery address",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20))
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: kTextFieldDecoration.copyWith(
                          hintText: 'Flat number'),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration:
                          kTextFieldDecoration.copyWith(hintText: 'Area'),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration:
                          kTextFieldDecoration.copyWith(hintText: 'Additional'),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 20,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                OutlineButton.icon(
                  textColor: Color(0xFF6200EE),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, HomeScreen.id);
                  },
                  icon: Icon(Icons.navigate_next, size: 30),
                  label: Text("Continue"),
                )
              ],
            )


          ],
        ),
      )),
    );
  }
}

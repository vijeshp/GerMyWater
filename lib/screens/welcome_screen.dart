import 'dart:async';
import 'package:getmywater/screens/registration.dart';

import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 2),
            ()=> Navigator.pushReplacementNamed(context, Registration.id)
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('images/drink_water.png',
                width: 400,
                height: 400)

          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

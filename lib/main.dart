import 'package:flutter/material.dart';
import 'package:getmywater/screens/add_address_screen.dart';
import 'package:getmywater/screens/homescreen.dart';
import 'package:page_transition/page_transition.dart';
import 'screens/welcome_screen.dart';
import 'screens/registration.dart';
import 'screens/otp_screen.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: WelcomeScreen.id,
      // ignore: missing_return
      onGenerateRoute: (settings){
        switch(settings.name) {
          case WelcomeScreen.id:
            return PageTransition(child: WelcomeScreen(), type: PageTransitionType.rightToLeft);
            break;
          case Registration.id:
            return PageTransition(child: Registration(), type: PageTransitionType.rightToLeft);
            break;
          case OTPverification.id:
            // ignore: missing_return
            return PageTransition(child: OTPverification(), type: PageTransitionType.rightToLeft);
            break;
          case AddLocation.id:
          // ignore: missing_return
            return PageTransition(child: AddLocation(), type: PageTransitionType.rightToLeft);
            break;
          case HomeScreen.id:
          // ignore: missing_return
            return PageTransition(child: HomeScreen(), type: PageTransitionType.rightToLeft);
            break;
        }
      }/*,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        Registration.id: (context) => Registration(),
        OTPverification.id: (context) => OTPverification()
      },*/
    );
  }
}

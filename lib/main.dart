import 'package:flutter/material.dart';
import 'package:tutumapp/welcome_Scr.dart';
import 'LogAs_Scr.dart';
import 'Login_Scr.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
            home: LogAS(),
            //WelcomeScreen(),
      //LoginScreen(),

    );
  }
}

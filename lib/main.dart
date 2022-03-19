import 'package:flutter/material.dart';
import 'package:tutumapp/welcome_Scr.dart';
import 'Doctors_list.dart';
import 'Home.dart';
import 'LogAs_Scr.dart';
import 'Login_Scr.dart';
import 'basma/p1.dart';
import 'reg_patient.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
            home: SignUP_patient(),
            //WelcomeScreen(),
      //

    );
  }
}

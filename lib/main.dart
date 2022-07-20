import 'package:flutter/material.dart';
import 'package:tutumapp/reg_doctor.dart';
import 'package:tutumapp/reg_patient.dart';
import 'package:tutumapp/reg_patient2.dart';

import 'PatHome.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
            home: PatHome(),
            //WelcomeScreen(),
      //
      //theme: ThemeData(fontFamily: 'Monteserrat'),
    );
  }
}

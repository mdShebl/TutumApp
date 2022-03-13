import 'package:flutter/material.dart';
import 'package:tutumapp/PatHome.dart';
import 'package:tutumapp/reg_Monitor.dart';
import 'package:tutumapp/reg_Monitor2.dart';
import 'package:tutumapp/reg_doctor2.dart';
import 'package:tutumapp/reg_doctor.dart';
import 'package:tutumapp/reg_patient.dart';
import 'package:tutumapp/reg_patient2.dart';
import 'package:tutumapp/reports.dart';
import 'package:tutumapp/welcome_Scr.dart';
//import 'package:flutter_test1/reports.dart';
import 'LogAs_Scr.dart';
import 'Login_Scr.dart';
import 'SignAs_Scr.dart';
import 'VS HR.dart';
import 'dddd.dart';
import 'med1.dart';
import 'updates.dart';
//import 'reports.dart';
import 'docList.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: med(),

      //WelcomeScreen(),
      //
    );
  }
}

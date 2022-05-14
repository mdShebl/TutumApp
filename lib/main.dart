import 'package:flutter/material.dart';
import 'package:tutumapp/PatHome.dart';
import 'package:tutumapp/dddd.dart';
import 'package:tutumapp/med1.dart';
import 'package:tutumapp/reg_doctor.dart';
import 'package:tutumapp/test.dart';

import 'package:tutumapp/welcome_Scr.dart';
import 'LogAs_Scr.dart';
import 'Login_Scr.dart';
import 'basma/p1.dart';
import 'docList.dart';
import 'docProfile.dart';
import 'invite_code.dart';
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
            home: Doc_profile(),
            //WelcomeScreen(),
      //
      //theme: ThemeData(fontFamily: 'Monteserrat'),
    );
  }
}

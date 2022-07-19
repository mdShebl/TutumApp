import 'package:flutter/material.dart';
import 'package:tutumapp/reg_doctor.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
            home: SignUP_Doctor(),
            //WelcomeScreen(),
      //
      //theme: ThemeData(fontFamily: 'Monteserrat'),
    );
  }
}

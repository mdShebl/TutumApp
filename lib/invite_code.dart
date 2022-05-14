import 'dart:math';

import 'package:flutter/material.dart';
import 'package:share/share.dart';


class InvCode extends StatelessWidget {
  var primaryColor = Color(0xFFE42A4C);
  var primaryColor2 = Color(0xFFEDEDED);
  var invit_Code = Random().nextInt(8000)+1200;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: primaryColor.withOpacity(0.0),
        title: Text(
          'lnvite Code',
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
        leading: const IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black87,
          ),
          onPressed: printMess,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Container(
              child: Image.asset(
                'images/Doctors-pana.png',
                //width: 22,
                // height: 22,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Ask your doctor to add this code\n"
            "to track your vital signs",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                // color: Colors.black,
                fontFamily: 'Montserrat'),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "Your Doctor Code",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                // color: Colors.black,
                fontFamily: 'Montserrat'),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "VC$invit_Code",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w800,
                // color: Colors.black,
                fontFamily: 'Montserrat'),
          ),
          SizedBox(
            height: 15,
          ),
          TextButton(
              onPressed: () {
                 Share.share("Tutum App (Invite Code) : VC$invit_Code");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.share,
                    color: primaryColor,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Share Code',
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                ],
              ))

        ],
      ),
    );
  }
}

void printMess() {
  print(" this");
}

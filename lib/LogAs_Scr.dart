import 'dart:ui';

import 'package:flutter/material.dart';

class LogAS extends StatelessWidget {
  var primaryColor = const Color(0xFFE42A4C);
  var primaryColor2 = const Color(0xFFEDEDED);
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  //LogAs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: primaryColor.withOpacity(1),
        leading: const IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: printMess,
        ),
      ),
      body:

      Container(
        color: primaryColor,
        child: Column(
          children: [
            Container(
              width: 115,
              height: 115,
              child: const Image(
                image: NetworkImage('https://i.ibb.co/NrNcTKf/TUlogin3.png'),
              ),
            ),
            Container(
              width: 300,
              height: 300,
              decoration: const BoxDecoration(
                color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0)
                  ),
              ),
            ),

            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Welcome To',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontFamily: 'Montserrat',
                  ),
                ),
                Text(
                  ' Tutum App',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontFamily: 'Montserrat',
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'New User ? ',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      print("connect to sign up page ...");
                    },
                    child: Text(
                      'Create New Account',
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 16,
                      ),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}

void printMess() {
  print(" this");
}

void printMess2(value) {
  print(value);
}

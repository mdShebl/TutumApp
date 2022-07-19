import 'package:flutter/material.dart';
import 'Login_Scr.dart';

class connectScreen_2 extends StatelessWidget {
  var primaryColor = const Color(0xFFE42A4C);
  var primaryColor2 = const Color(0xFFEDEDED);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: primaryColor.withOpacity(0.0),
        title: const Text('Connect your watch',
            style: TextStyle(
              color: Colors.black87,
            ),),
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
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  border: Border.all(color: Colors.pink, width: 2, ),
                  color: Colors.white,

                ),
                  child: const Text('ggg'),
                    ),
            ),
          ),
          const SizedBox(height: 20),
          Column(
            children:  const [

              Text(
                "Connect ",
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w400,
                    color: Colors.black87,
                    fontFamily: 'Montserrat'),
              ),
              Text(
                "Tutum Watch",
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                    color: Colors.pink,
                    fontFamily: 'Montserrat'),
              ),
              SizedBox(height: 30),
              Text(
                "and press next",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: Colors.black54,
                    fontFamily: 'Montserrat'),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(45.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              height: 60,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              width: double.infinity,
              child: MaterialButton(
                color: primaryColor,
                onPressed: () {
                 Navigator.push(context,MaterialPageRoute(builder: (context)=> LoginScreen()));
                },
                child: const Text(
                  'Next',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

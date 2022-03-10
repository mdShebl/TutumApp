import 'package:flutter/material.dart';

class PatHome extends StatefulWidget {
  @override
  State<PatHome> createState() => _PatHomeState();
}

class _PatHomeState extends State<PatHome> {
  var primaryColor = Color.fromARGB(255, 228, 42, 76);
  var primaryColor2 = Color(0xFFFFDBDB);
  var primaryColor3 = Color(0xFFEDE8E8);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor2,
        appBar: AppBar(
          toolbarHeight: 80,
          elevation: 0.0,
          automaticallyImplyLeading: true,
          leading: Icon(
            Icons.format_list_bulleted_sharp,
            size: 28,
          ),
          backgroundColor: primaryColor,
          title: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: Row(
              children: [
                Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: CircleAvatar(
                        radius: 18.0,
                        //backgroundImage: AssetImage('images/woman-2.png'),
                        backgroundColor: Colors.white,
                        child: Image.asset('images/man.png'),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Text("Welcome, ",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18,
                        fontWeight: FontWeight.w400)),
                Text("Ahmed",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    )),
              ],
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: IconButton(
                onPressed: () {},
                icon: Image.asset('images/pluss.png'),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Container(
              height: 75,
              color: Colors.red,
              width: double.infinity,
            ),
            Expanded(
              child: Row(
                children: [
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          size: 70,
                        ),
                        Text(
                          'male',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                    //decoration: BoxDecoration,
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                color: Colors.lightGreen,
              ),
            ),
          ],
        ));
  }
}

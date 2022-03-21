import 'dart:math';
import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:tutumapp/SvgIcons.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

List mycolorss = <Color>[
  Colors.red,
  Colors.blue,
  Colors.green,
  Colors.purple,
  Colors.orange,
  Colors.indigo,
  Colors.pink,
  Colors.deepOrangeAccent,
  Colors.brown,
  Colors.purple,
  Colors.grey,



];
Color primaryColor = mycolorss[0];

class _MyHomePageState extends State<MyHomePage> {
  @override
  int selected = -1;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Color Filters"),
      ),
      body: Stack(
        children: [
          buildImage(),
          buildColorIcons(),
        ],
      ),
    );
  }

  Widget buildImage() => Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    child: Container(
      width: double.infinity,
      child: ScrollSnapList(
        itemBuilder:  (context,index) => pillIcon(index == selected ? primaryColor : Colors.black ),
        itemSize: 30,
        dynamicItemSize: true,
        itemCount: 30,
        onItemFocus: (index) {
          print("Center is $index + ${primaryColor} ");
          setState(() {
            selected = index;
          });

        },        ),
    ),
  );

  Widget buildColorIcons() => Positioned(
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [for (var i = 0; i < mycolorss.length; i++) buildIconBtn(mycolorss[i])],
      ),
    ),
  );

  Widget buildIconBtn(Color myColor) => Container(
    child: SingleChildScrollView(
      child: Stack(
        children: [
          Positioned(
            top: 12.5,
            left: 12.5,
            child: Icon(
              Icons.check,
              size: 20,
              color: primaryColor == myColor ? myColor : Colors.transparent,
            ),
          ),
          SingleChildScrollView(
            child: IconButton(
              icon: Icon(
                Icons.circle,
                color: myColor.withOpacity(0.65),
                size: 30,
              ),
              onPressed: () {
                setState(() {
                  primaryColor = myColor;
                });
              },
            ),
          ),
        ],
      ),
    ),
  );

  // Widget buildAmountTag() => Positioned(
  //   bottom: 125,
  //   left: 50,
  //   child: Container(
  //     child: Text(
  //       "\$25.00",
  //       style: TextStyle(
  //           color: primaryColor.withOpacity(0.65),
  //           fontSize: 30.00,
  //           fontWeight: FontWeight.w500),
  //     ),
  //   ),
  // );
}

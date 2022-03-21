import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'SvgIcons.dart';

class SnappingPage extends StatefulWidget {
  const SnappingPage({Key? key}) : super(key: key);

  @override
  State<SnappingPage> createState() => _SnappingPageState();
}

class _SnappingPageState extends State<SnappingPage> {
   int selected = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold( body:
      SizedBox(
        height: 100,
        width: MediaQuery.of(context).size.width,

        child: ScrollSnapList(
          itemBuilder:  (context,index) => pillIcon(index == selected ? Colors.blue : Colors.black),
          itemSize: 35,
         // dynamicItemSize: true,
          itemCount: 35,
          onItemFocus: (index) {
            print("Center is $index");
            setState(() {
              selected = index;
            });
          },        )
      )

    /*  ScrollSnapList(
        onItemFocus: (index) {
      print("Center is $index");
      setState(() {
        selected = index;
      });
    },
    itemSize: 35,
    itemBuilder: (context,index) => pillIcon(index == selected ? Colors.blue : Colors.black),
    itemCount: 30,

    ),*/
          /*SizedBox(
            child: PageView.builder(
              controller: PageController(viewportFraction: 0.1),
              itemBuilder: (context, index) => Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                width: 30,
                height: 30,
                decoration:
                const BoxDecoration(color: Colors.black, shape: BoxShape.circle),
              ),
              pageSnapping: true,
              itemCount: 30,
            ),
            height: 100,
          )*/,
        );


  }


}

import 'package:flutter/material.dart';

class Doc_profile extends StatelessWidget {
  Doc_profile({Key? key}) : super(key: key);
  var primaryColor = Color(0xFFE42A4C);
  var primaryColor2 = Color(0xFFEDEDED);
  var primaryColor3 = Color(0xFFE24E59);
  var primaryColor4 = Color(0xFFD2EFFA);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: primaryColor.withOpacity(0.0),
        title: Text(
          'Profile',
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
          Expanded(
            child: Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                  //color: Colors.red,
                  ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 62,
                      child: CircleAvatar(
                        radius: 58,
                        child: ClipOval(
                          child: Image.asset(
                            'images/male-doctor copy.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "Dr. Amged",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "Heart Specialist",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black45,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 40,
                          width: 125,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: primaryColor,
                          ),
                          child: MaterialButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Icon(
                                  Icons.call,
                                  color: Colors.white,
                                ),
                                Text(
                                  " Voice call",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 40,
                              width: 125,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: primaryColor,
                              ),
                              child: MaterialButton(
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.chat_bubble,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "  Massage",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20 , right: 20 ,bottom: 20
            ),
            child: Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.2),
                borderRadius: BorderRadius.circular(19),
              ),
              child: TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                cursorColor: primaryColor,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'About Doctor',
                  hintStyle: TextStyle(fontSize: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                       //color: Color.fromARGB(255, 228, 42, 76),
                      width: 0.0,
                      style: BorderStyle.none,
                    ),
                  ),
                 // filled: true,
                  contentPadding: EdgeInsets.all(16),
                  isDense: true,
                ),
              ),
            ),
          ),
          Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
              //color: primaryColor.withOpacity(0.1),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    width: 110,
                    height: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: primaryColor3.withOpacity(.2),
                    ),
                    child: MaterialButton(
                      onPressed: () => showModalBottomSheet(
                          context: context,
                          builder: (context) => buildSheet()),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Image.asset(
                              'images/hospital-building.png',
                              width: 55,
                              height: 55,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Clinic Visit",
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w500,
                          ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    width: 110,
                    height: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: primaryColor3.withOpacity(.2),
                    ),
                    child: MaterialButton(
                      onPressed: () {},
                      child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Image.asset(
                              'images/house.png',
                              width: 55,
                              height: 55,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Home Visit",
                            style: TextStyle(
                             color: Colors.black87,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    width: 110,
                    height: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: primaryColor3.withOpacity(.2),
                    ),
                    child: MaterialButton(
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Image.asset(
                              'images/your-location.png',
                              width: 55,
                              height: 55,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Clinic Location",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                                color: Colors.black87,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
             // color: Colors.deepOrangeAccent,
            ),
            child:  Padding(
              padding: const EdgeInsets.all(50.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: primaryColor
                ),
                height: 60,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                width: 10,
                child: MaterialButton(
                  color: primaryColor,
                  onPressed: () {
                  },
                  child: Text(
                    'Back',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 18,
                    ),
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
Widget buildSheet() => Container();
void printMess() {
  print(" this");
}

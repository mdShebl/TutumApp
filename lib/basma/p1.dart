import 'package:flutter/material.dart';


class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var primaryColor = Color.fromARGB(255, 228, 42, 76);
    var primaryColor2 = Color(0xFFEDEDED);
    var nameController = TextEditingController();
    var ageController = TextEditingController();
    int _value = 1;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          automaticallyImplyLeading: true,
          backgroundColor: primaryColor.withOpacity(0.0),
          title: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: RichText(
                text: TextSpan(
                  text: 'Sign up - ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontFamily: 'Montserrat',
                  ),
                  children: const <TextSpan>[
                    TextSpan(
                        text: ' Patient',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 228, 42, 76),
                          fontFamily: 'Montserrat',
                        )),
                  ],
                ),
              ),
            ),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: SingleChildScrollView(
            child: Column(children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      ' Enter your name',
                      style: TextStyle(
                        fontSize: 19,
                        color: Colors.black54,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'DancingScript',
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 2, 20, 10),
                child: Container(
                  // color: primaryColor2,
                  child: TextField(
                    cursorColor: primaryColor,
                    controller: nameController,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      hintText: 'Ahmed',
                      hintStyle: TextStyle(fontSize: 16),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 228, 42, 76),
                          width: 1.0,
                        ),
                      ),
                      filled: false,
                      contentPadding: EdgeInsets.all(16),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 165),
                    child: Text(
                      ' Gender',
                      style: TextStyle(
                        fontSize: 19,
                        color: Colors.black54,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'DancingScript',
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 5, 0, 30),
                      child: Container(
                        height: 50,
                        child: ChoiceChip(
                          label: Text("      Male      "),
                          selected: false,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  color: Color.fromARGB(255, 228, 42, 76),
                                  width: 1),
                              borderRadius: BorderRadius.circular(10.0)),
                          onSelected: (bool value) {
                            //Do whatever you want when the chip is selected
                          },
                          pressElevation: 20,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 5, 0, 30),
                      child: Container(
                        height: 50,
                        child: ChoiceChip(
                          label: Text("   female   "),
                          selected: false,
                          backgroundColor: Colors.white,
                          shadowColor: Color.fromARGB(255, 228, 42, 76),
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  color: Color.fromARGB(255, 228, 42, 76),
                                  width: 1),
                              borderRadius: BorderRadius.circular(10.0)),
                          onSelected: (bool value) {
                            //Do whatever you want when the chip is selected
                          },
                          pressElevation: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8, bottom: 5),
                    child: Text(
                      ' Date of birth',
                      style: TextStyle(
                        fontSize: 19,
                        color: Colors.black54,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'DancingScript',
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 25, 3),
                      child: TextField(
                        obscureText: true,
                        cursorColor: primaryColor,
                        controller: ageController,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: '1995',
                          hintStyle: TextStyle(fontSize: 16),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Color.fromARGB(255, 228, 42, 76),
                              width: 1.0,
                            ),
                          ),
                          filled: false,
                          contentPadding: EdgeInsets.all(12),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 23, 3),
                      child: TextField(
                        obscureText: true,
                        cursorColor: primaryColor,
                        controller: ageController,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: '05',
                          hintStyle: TextStyle(fontSize: 16),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Color.fromARGB(255, 228, 42, 76),
                              width: 1.0,
                            ),
                          ),
                          filled: false,
                          contentPadding: EdgeInsets.all(12),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 28, 3),
                      child: TextField(
                        obscureText: true,
                        cursorColor: primaryColor,
                        controller: ageController,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: '15',
                          hintStyle: TextStyle(fontSize: 16),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Color.fromARGB(255, 228, 42, 76),
                              width: 1.0,
                            ),
                          ),
                          filled: false,
                          contentPadding: EdgeInsets.all(12),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8, bottom: 3),
                      child: Text(
                        ' Height',
                        style: TextStyle(
                          fontSize: 19,
                          color: Colors.black54,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'DancingScript',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 14,
                        bottom: 3,
                      ),
                      child: Text(
                        ' Weight',
                        style: TextStyle(
                          fontSize: 19,
                          color: Colors.black54,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'DancingScript',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 0, bottom: 3),
                      child: Text(
                        ' Blood type',
                        style: TextStyle(
                          fontSize: 19,
                          color: Colors.black54,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'DancingScript',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 25, 30),
                    child: TextField(
                      obscureText: true,
                      cursorColor: primaryColor,
                      controller: ageController,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: '150',
                        hintStyle: TextStyle(fontSize: 16),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Color.fromARGB(255, 228, 42, 76),
                            width: 1.0,
                          ),
                        ),
                        filled: false,
                        contentPadding: EdgeInsets.all(12),
                        isDense: true,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 23, 30),
                    child: TextField(
                      obscureText: true,
                      cursorColor: primaryColor,
                      controller: ageController,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: '58',
                        hintStyle: TextStyle(fontSize: 16),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Color.fromARGB(255, 228, 42, 76),
                            width: 1.0,
                          ),
                        ),
                        filled: false,
                        contentPadding: EdgeInsets.all(12),
                        isDense: true,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 28, 30),
                    child: MyStatefulWidget(),
                  ),
                ),
              ]),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8, bottom: 0),
                    child: Text(
                      ' Phone number ',
                      style: TextStyle(
                        fontSize: 19,
                        color: Colors.black54,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'DancingScript',
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 20, 30),
                child: TextField(
                  cursorColor: primaryColor,
                  controller: nameController,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hintText: '01023837647',
                    hintStyle: TextStyle(fontSize: 16),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 228, 42, 76),
                        width: 1.0,
                      ),
                    ),
                    filled: false,
                    contentPadding: EdgeInsets.all(12),
                    isDense: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 2, 20, 10),
                child: Container(
                  // color: primaryColor2,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 228, 42, 76),
                      minimumSize: const Size.fromHeight(50), // NEW
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Continue',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ),
              RichText(
                text: TextSpan(
                  text: 'Already have an account?',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontFamily: 'Montserrat',
                  ),
                  children: const <TextSpan>[
                    TextSpan(
                        text: 'Sign in',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 228, 42, 76),
                          fontFamily: 'Montserrat',
                        )),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String dropdownValue = 'A+';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.black, fontSize: 16),
      underline: Container(
        height: 2,
        color: Color.fromARGB(255, 228, 42, 76),
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>['A+', 'O+', 'BB+', 'AB+', 'O-', 'B-', 'AB-', 'A-']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

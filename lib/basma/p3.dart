import 'package:flutter/material.dart';


class Reg3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var primaryColor = Color.fromARGB(255, 228, 42, 76);
    var primaryColor2 = Color(0xFFEDEDED);
    var nameController = TextEditingController();
    var ageController = TextEditingController();

    return Scaffold(
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
                        text: ' Monitor',
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
              const SizedBox(
                height: 7,
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
              const SizedBox(
                height: 7,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      ' Age',
                      style: TextStyle(
                        fontSize: 19,
                        color: Colors.black54,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'DancingScript',
                      ),
                    ),
                  ),
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
                      padding: const EdgeInsets.fromLTRB(16, 3, 50, 10),
                      child: Container(
                        //color: primaryColor2,
                        child: TextField(
                          obscureText: true,
                          cursorColor: primaryColor,
                          controller: ageController,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: '41',
                            hintStyle: TextStyle(fontSize: 16),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Color.fromARGB(255, 228, 42, 76),
                                width: 1.0,
                              ),
                            ),
                            filled: false,
                            // contentPadding: EdgeInsets.all(16),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 5, 0, 30),
                      child: Container(
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
                    padding: const EdgeInsets.only(left: 15),
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
              const SizedBox(
                height: 7,
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
                      hintText: 'Phone number',
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
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      ' Blood type ',
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
                      hintText: 'Blood type',
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
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      ' Relationship with patient ',
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
                      hintText: 'Relationship with patient',
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
              const SizedBox(
                height: 7,
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
     );
  }
}

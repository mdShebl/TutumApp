import 'package:flutter/material.dart';

class SignUP_patient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var primaryColor = Color.fromARGB(255, 228, 42, 76);
    var primaryColor2 = Color(0xFFEDEDED);
    var nameController = TextEditingController();
    var ageController = TextEditingController();
    int _value = 1;

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
              text: const TextSpan(
                text: 'Sign up -',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontFamily: 'Montserrat',
                ),
                children: <TextSpan>[
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
        padding: const EdgeInsetsDirectional.all(20),
        child: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsetsDirectional.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Icon(
                    Icons.person,
                    color: Colors.black54,
                    size: 27,
                  ),
                  Text(
                    ' Enter your name',
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.black54,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'DancingScript',
                    ),
                  ),
                ],
              ),
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
                    hintText: 'Tap,  & Enter name',
                    hintStyle: TextStyle(fontSize: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        // color: Color.fromARGB(255, 228, 42, 76),
                        width: 0.0,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    contentPadding: EdgeInsets.all(16),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.man,
                  color: Colors.black54,
                  size: 27,
                ),

                Text(
                  ' Gender',
                  style: TextStyle(
                    fontSize: 19,
                    color: Colors.black45,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'DancingScript',
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Container(
                      height: 50,
                      child: ChoiceChip(
                        labelPadding: EdgeInsets.all(10),
                        labelStyle: TextStyle(color: Colors.white),
                        avatar: Icon(Icons.male,size: 32,color: Colors.white,),
                        backgroundColor: Colors.white,
                        selectedColor: primaryColor,
                        label: Text("   Male    "),
                        selected: true,
                        shadowColor: Color.fromARGB(255, 228, 42, 76),
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                color: Color.fromARGB(255, 228, 42, 76),
                                style: BorderStyle.none,
                                width: 1),
                            borderRadius: BorderRadius.circular(10.0)

                        ),

                        onSelected: (bool value) {
                          //Do whatever you want when the chip is selected
                        },
                        pressElevation: 10,

                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Container(
                      height: 50,
                      child: ChoiceChip(
                        labelPadding: EdgeInsets.all(10),
                        labelStyle: TextStyle(color: Colors.black45),
                        avatar: Icon(Icons.female,size: 32,color: Colors.black45,),
                       // backgroundColor: Colors.black12,
                        selectedColor: primaryColor,
                        label: Text(" Female  "),
                        selected: false,
                        shadowColor: Color.fromARGB(255, 228, 42, 76),
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                color: Color.fromARGB(255, 228, 42, 76),
                                style: BorderStyle.none,
                                width: 1),

                            borderRadius: BorderRadius.circular(10.0)),
                        onSelected: (bool value) {
                          //Do whatever you want when the chip is selected
                        },
                        pressElevation: 10,

                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: const [
                Padding(
                  padding: const EdgeInsets.all(7),
                  child:
                  Text(
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
            const SizedBox(
              height: 15,
            ),
            Row(
              children: const [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 8, bottom: 3),
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
                    padding: EdgeInsets.only(
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
                    padding: EdgeInsets.only(left: 0, bottom: 3),
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
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 28, 30),
                  child: MyStatefulWidget(),
                ),
              ),
            ]),
            Padding(
              padding: const EdgeInsetsDirectional.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Icon(
                    Icons.phone_android,
                    color: Colors.black54,
                    size: 25,
                  ),
                  Text(
                  ' Phone number ',
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.black54,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'DancingScript',
                    ),
                  ),
                ],
              ),
            ),
            TextField(
              cursorColor: primaryColor,
              controller: nameController,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'eg. 01023837647',
                hintStyle: TextStyle(fontSize: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    // color: Color.fromARGB(255, 228, 42, 76),
                    width: 0.0,
                    style: BorderStyle.none,
                  ),
                ),
                filled: true,
                contentPadding: EdgeInsets.all(12),
                isDense: true,
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
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
                    print(nameController.text);
                    print(ageController.text);
                  },
                  child: const Text(
                    'Continue',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
            RichText(
              text: const TextSpan(
                text: 'Already have an account? ',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontFamily: 'Montserrat',
                ),
                children: <TextSpan>[
                  TextSpan(
                      text: ' Sign in',
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

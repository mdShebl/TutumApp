import 'package:flutter/material.dart';

class SignUP_Doctor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var primaryColor = Color.fromARGB(255, 228, 42, 76);
    var primaryColor2 = Color(0xFFEDEDED);
    var nameController = TextEditingController();
    var ageController = TextEditingController();
    var numController = TextEditingController();
    var addressController = TextEditingController();
    var SpecializationController = TextEditingController();

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
                      text: ' Doctor',
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
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
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
              padding: const EdgeInsets.all(8.0),
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
                        //color: Color.fromARGB(255, 228, 42, 76),
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
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 15),
              child: Row(
                children: [
                  Icon(Icons.date_range_rounded,
                    color: Colors.black54,
                    size: 25,
                  ),
                  SizedBox(width: 3,),

                  Expanded(

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
                  SizedBox(width: 10,),
                  Icon(
                    Icons.man,
                    color: Colors.black54,
                    size: 27,
                  ),

                  Expanded(

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
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    width: 95,
                    height: 47,
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
                  SizedBox(width: 10,),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: Container(
                        height: 50,
                        child: ChoiceChip(
                          labelPadding: EdgeInsets.all(6),
                          labelStyle: TextStyle(color: Colors.white),
                          avatar: Icon(Icons.male,size: 32,color: Colors.white,),
                          backgroundColor: Colors.white,
                          selectedColor: primaryColor,
                          label: Text("Male     "),
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
                      padding: const EdgeInsets.all(0),
                      child: Container(
                        height: 50,
                        child: ChoiceChip(
                          labelPadding: EdgeInsets.all(6),
                          labelStyle: TextStyle(color: Colors.black45),
                          avatar: Icon(Icons.female,size: 32,color: Colors.black45,),
                          // backgroundColor: Colors.black12,
                          selectedColor: primaryColor,
                          label: Text("Female  "),
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
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 15),
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                cursorColor: primaryColor,
                controller: numController,
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
                  contentPadding: EdgeInsets.all(16),
                  isDense: true,
                ),
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Icon(
                    Icons.contact_page_rounded,
                    color: Colors.black54,
                    size: 25,
                  ),
                  Text(
                    ' Specialization ',
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
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                cursorColor: primaryColor,
                controller: numController,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Tap, Enter your specialty',
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
                  isDense: true,
                ),
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Icon(
                    Icons.location_pin,
                    color: Colors.black54,
                    size: 25,
                  ),
                  Text(
                    ' Clinic address ',
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
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                cursorColor: primaryColor,
                controller: numController,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Tap, Enter Clinic address',
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
                  isDense: true,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
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
            const SizedBox(
              height: 10,
            ),
            RichText(
              text: TextSpan(
                text: 'Already have an account? ',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontFamily: 'Montserrat',
                ),
                children: const <TextSpan>[
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

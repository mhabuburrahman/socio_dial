import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:frontend/Config/constants.dart';
import 'package:frontend/Views/Utils/background.dart';
import 'package:frontend/Views/Utils/custom_button.dart';
import 'package:frontend/Views/Utils/date_picker.dart';
import 'package:frontend/Views/Utils/input_text_field.dart';

class SignupInfoScreen extends StatefulWidget {
  @override
  _SignupInfoScreenState createState() => _SignupInfoScreenState();
}

class _SignupInfoScreenState extends State<SignupInfoScreen> {
  String blood = "";
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: new AppBar(
        leading: BackButton(
          color: Colors.white,
        ),
        iconTheme: IconThemeData(color: PrimaryBGColor),
        title: Text(
          "Back",
          style:
          TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        elevation: 0,
        backgroundColor: LabelColor,
      ),
      body: Container(
        width: double.infinity,
        height: size.height,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/BG.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SingleChildScrollView(
              child: SafeArea(
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: size.height * .15,
                        child: Align(
                          alignment: Alignment.center,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: "Personal Info",
                                    style: BodyText4
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: Form(
                          child: Column(
                            children: [
                              Container(
                                width: size.width *2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    InputTextField(
                                      icon: Icons.location_on_outlined,
                                      obText: false,
                                      hint: "Address",
                                    ),
                                    SizedBox(
                                      height: size.height * 0.02,
                                    ),
                                    InputTextField(
                                      icon: Icons.email_outlined,
                                      obText: false,
                                      hint: "Phone No",
                                    ),
                                    SizedBox(
                                      height: size.height * 0.02,
                                    ),
                                    // InputTextField(
                                    //   icon: Icons.arrow_drop_down,
                                    //   obText: false,
                                    //   hint: "Blood Group",
                                    // ),
                                    DropdownSearch<String>(
                                      dropdownSearchDecoration: InputDecoration(
                                        //labelStyle: BodyText6,
                                        hintStyle: BodyText6,
                                        fillColor: Colors.white,
                                        filled: true,
                                        contentPadding: EdgeInsets.fromLTRB(12, 12, 0, 0),
                                        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.red),
                                            borderRadius: BorderRadius.circular(20.0)),
                                      ),
                                      validator: (v) =>
                                      v == null ? "Please select a Blood Group" : null,
                                      hint: "Select Blood Group",
                                      mode: Mode.MENU,
                                      showSelectedItem: true,
                                      items: [
                                        "A(+ve)",
                                        "B(+ve)",
                                        "O(+ve)",
                                        "AB(+ve)",
                                        "A(-ve)",
                                        "B(-ve)",
                                        "O(-ve)",
                                        "AB(-ve)",
                                      ],
                                      //label: "Blood Group",

                                      showClearButton: true,
                                      onChanged: (value) {
                                        blood = value;
                                        print(blood);
                                      },
                                    ),
                                    SizedBox(
                                      height: size.height * 0.02,
                                    ),
                                    DatePicker(
                                      labelText: 'Birth Date',
                                      onChanged: (val){},
                                    ),
                                    SizedBox(
                                      height: size.height * 0.02,
                                    ),

                                    Column(
                                      children: [
                                        SizedBox(
                                          height: size.height * .045,
                                        ),
                                        CustomButton(text: ' Submit',
                                            buttonColor: Colors.green,
                                            press: (){
                                              Navigator.of(context).pushNamed("/verification");
                                            }),
                                        SizedBox(
                                          height: size.height * .03,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
    );

  }
}

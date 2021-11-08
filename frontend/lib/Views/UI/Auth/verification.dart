
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:frontend/Config/constants.dart';
import 'package:frontend/Views/Utils/background_unlogged.dart';
import 'package:frontend/Views/Utils/custom_button.dart';
import 'package:frontend/Views/Utils/input_text_field.dart';

class VerificationScreen extends StatefulWidget {
  @override
  _VerificationScreenState createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  String verify ="";
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BackgroundUnlogged(
      child: SingleChildScrollView(
        child: SafeArea(
            child: Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  height: size.height * .15,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: "Verification",
                              style: BodyText4
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * .03,
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
                              SizedBox(
                                height: size.height * .03,
                              ),
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
                                v == null ? "Please select a Document" : null,
                                hint: "Select Document",
                                mode: Mode.MENU,
                                showSelectedItem: true,
                                items: [
                                  "Passport",
                                  "NID",
                                  "Birth Certificate",
                                ],
                                //label: "Blood Group",
                                showClearButton: true,
                                onChanged: (value) {
                                  verify = value;
                                  print(verify);
                                },
                              ),
                              SizedBox(
                                height: size.height * .03,),
                              InputTextField(
                                icon: Icons.verified_outlined,
                                obText: false,
                                hint: " Enter Number",
                              ),
                              SizedBox(
                                height: size.height * .02,
                              ),

                              Column(
                                children: [
                                  SizedBox(
                                    height: size.height * .045,
                                  ),
                                  CustomButton(
                                      text: 'Verify',
                                      buttonColor: Colors.green,
                                      press: (){
                                        Navigator.of(context)
                                            .pushNamed("/home");
                                      }),
                                  SizedBox(
                                    height: size.height * .03,
                                  ),
                                  Container(
                                    child: RichText(
                                      text: TextSpan(
                                          text: 'Skip verification for now and do it later',
                                          style: BodyText2),
                                    ),
                                  ),
                                  SizedBox(height: size.height *.02),
                                  CustomButton(
                                    text: 'Skip',
                                    buttonColor: Colors.white,
                                    textColor: LabelColor,
                                    press: (){
                                      Navigator.of(context)
                                          .pushNamed("/home");
                                    },
                                  ),
                                  SizedBox(
                                    height: size.height * .03,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

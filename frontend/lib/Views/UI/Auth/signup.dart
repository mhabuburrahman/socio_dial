import 'package:flutter/material.dart';
import 'package:frontend/Config/constants.dart';
import 'package:frontend/Views/Utils/background_unlogged.dart';
import 'package:frontend/Views/Utils/custom_button.dart';
import 'package:frontend/Views/Utils/input_text_field.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BackgroundUnlogged(
        child: SingleChildScrollView(
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
                                text: "Register",
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
                                  icon: Icons.perm_identity,
                                  obText: false,
                                  hint: "Full Name",
                                ),
                                SizedBox(
                                  height: size.height * 0.02,
                                ),
                                InputTextField(
                                  icon: Icons.email_outlined,
                                  obText: false,
                                  hint: "Email",
                                ),
                                SizedBox(
                                  height: size.height * 0.02,
                                ),
                                InputTextField(
                                  icon: Icons.person,
                                  obText: false,
                                  hint: "Username",
                                ),
                                SizedBox(
                                  height: size.height * 0.02,
                                ),
                                InputTextField(
                                  icon: Icons.remove_red_eye_outlined,
                                  obText: false,
                                  hint: "Password",
                                ),
                                SizedBox(
                                  height: size.height * 0.02,
                                ),
                                InputTextField(
                                  icon: Icons.remove_red_eye_outlined,
                                  obText: false,
                                  hint: "Confirm Password",
                                ),
                                SizedBox(
                                  height: size.height * 0.02,
                                ),
                                Column(
                                  children: [
                                    SizedBox(
                                      height: size.height * .045,
                                    ),
                                    CustomButton(text: 'Next',
                                        buttonColor: Colors.green,
                                        press: (){
                                          Navigator.of(context).pushNamed("/signup/info");
                                        }),
                                    SizedBox(
                                      height: size.height * .03,
                                    ),
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            text: 'Already have an Account',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Alice-Regular',
                                            )),
                                      ),
                                    ),
                                    SizedBox(height: size.height *.02),
                                    CustomButton(
                                      text: 'Log In',
                                      buttonColor: Colors.white,
                                      textColor: LabelColor,
                                      press: (){
                                        Navigator.of(context).pushNamed("/");
                                      },
                                    ),
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
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:frontend/Config/constants.dart';
import 'package:frontend/Views/Utils/background_unlogged.dart';
import 'package:frontend/Views/Utils/custom_button.dart';
import 'package:frontend/Views/Utils/input_text_field.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BackgroundUnlogged(
        child: SingleChildScrollView(
          child: SafeArea(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: size.height * .08,
                  ),
                  Container(
                    height: size.height * 0.16,
                    child: Center(
                      child: Image.asset("assets/images/logo (2).png",
                        width: size.width * 0.55,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: Form(
                      child: Column(
                        children: [
                          Container(
                            width: size.width * 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                InputTextField(
                                  icon: Icons.person,
                                  obText: false,
                                   hint: "Username",
                                ),
                                SizedBox(
                                  height: size.height * 0.02,
                                ),
                                InputTextField(
                                  obText: true,
                                  icon: Icons.lock,
                                   hint: "Password",
                                ),
                                SizedBox(
                                  height: size.height * .01,
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: size.height * .045,
                              ),
                              CustomButton(text: 'Log In',
                                  buttonColor: Colors.green,
                                  press: (){}),
                              SizedBox(
                                height: size.height * .03,
                              ),
                              Container(
                                child: RichText(
                                  text: TextSpan(
                                      text: 'Do not have an account?',
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
                                text: 'Register Here',
                                buttonColor: Colors.white,
                                textColor: LabelColor,
                                press: (){},
                              ),
                              SizedBox(
                                height: size.height * .03,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
          )
    ),
    );
  }
}

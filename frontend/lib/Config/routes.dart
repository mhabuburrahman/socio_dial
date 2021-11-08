import 'package:flutter/widgets.dart';
import 'package:frontend/Views/UI/Auth/login_screen.dart';
import 'package:frontend/Views/UI/Auth/signup.dart';
import 'package:frontend/Views/UI/Auth/signup_info.dart';
import 'package:frontend/Views/UI/Auth/verification.dart';
import 'package:frontend/Views/UI/HomePage/home_screen.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  "/": (BuildContext context) => LoginScreen(),
  "/signup": (BuildContext context) => SignupScreen(),
  "/signup/info": (BuildContext context) => SignupInfoScreen(),
  "/verification": (BuildContext context) => VerificationScreen(),
  "/home": (BuildContext context) => HomeScreen(),
};

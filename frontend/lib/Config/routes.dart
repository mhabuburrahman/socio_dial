import 'package:flutter/widgets.dart';
import 'package:frontend/Views/UI/Auth/login_screen.dart';
import 'package:frontend/Views/UI/Auth/signup.dart';
import 'package:frontend/Views/UI/Auth/signup_info.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  "/": (BuildContext context) => LoginScreen(),
  "/signup": (BuildContext context) => SignupScreen(),
  "/signup/info": (BuildContext context) => SignupInfoScreen(),
};

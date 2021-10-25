import 'package:flutter/material.dart';
import 'package:frontend/Config/theme.dart';
import 'Config/routes.dart';

void main() {
  runApp((MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Socio-Dial',
      theme: appTheme(),
      initialRoute: '/',
      routes: routes,
    );
  }
}

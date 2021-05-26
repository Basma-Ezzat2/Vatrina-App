import 'package:flutter/material.dart';
import 'screens/welcome_screens.dart';
import 'package:welcome_page/screens/login_screens.dart';
import 'package:welcome_page/screens/signup_screens.dart';



void main() {
  runApp(MyHomePage());
}
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        SignupScreen.id: (context) => SignupScreen(),
      },
    );
  }
}

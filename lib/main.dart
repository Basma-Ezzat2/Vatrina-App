import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:welcome_page/provider/modelHud.dart';
import 'package:welcome_page/screens/pview.dart';
import 'screens/welcome_screens.dart';
import 'package:welcome_page/screens/login_screens.dart';
import 'package:welcome_page/screens/signup_screens.dart';
import 'screens/forgetpassword_screens.dart';
import 'screens/homepage_screens.dart';


void main() {
  runApp(MyHomePage());
}
// ignore: must_be_immutable
class MyHomePage extends StatelessWidget {
  bool isUserLoggedIn = false;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
     providers: [
    ChangeNotifierProvider<ModelHud>(
    create: (context) => ModelHud(),
    ),
    ],
    child:
      MaterialApp(
      home: Pview(),
      routes: {
        '/first': (context) => MyHomePage(),
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        SignupScreen.id: (context) => SignupScreen(),
        ForgetPasswordScreen.id: (context) => ForgetPasswordScreen(),
        HomepageScreen.id: (context) => HomepageScreen(),
      },

    ),
    );
    }}

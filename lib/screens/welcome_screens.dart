import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'homepage_screens.dart';
import 'signup_screens.dart';
import 'login_screens.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 60, 20, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  'Welcome to    Vatrina',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    color: Colors.lightBlue.shade900,
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 60.0,
            ),

            RaisedButton(
              child: Text('Log In',
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Source Sans Pro'
                ),),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
              color: Colors.lightBlue.shade500,
              textColor: Colors.white,
              onPressed: (){
                Navigator.pushNamed(context, LoginScreen.id);
              }
              ,
            ),
            SizedBox(
              height: 30.0,
            ),
            RaisedButton(
              child: Text('Sign Up',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Source Sans Pro',
                ),),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
              color: Colors.blueGrey.shade100,
              textColor: Colors.lightBlue[800],
              onPressed: (){
                Navigator.pushNamed(context, SignupScreen.id);
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            FlatButton(
              child: Text('Just a Visitor',
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Source Sans Pro'
                ),),
              onPressed: (){Navigator.pushNamed(context, HomepageScreen.id);},
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 4),
              textColor: Colors.lightBlue[800],
            ),
            SizedBox(height: 45,),
             Row(
                mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                  Text('Language:', style: TextStyle(color: Colors.lightBlue.shade500,
                  fontFamily: 'Source Sans Pro',
                  fontSize: 20)),
                  Container(
                    margin: EdgeInsets.only(left: 6),
                    child: Text('English >', style: TextStyle(color: Colors.red,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20,
                        fontWeight: FontWeight.w500)),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
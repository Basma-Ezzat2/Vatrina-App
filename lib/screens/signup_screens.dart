import 'package:flutter/material.dart';
import 'package:welcome_page/screens/welcome_screens.dart';

class SignupScreen extends StatefulWidget {
  static const String id = 'signup_screen';
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
         scrollDirection: Axis.vertical,
         child: Container(
           padding: EdgeInsets.symmetric(horizontal: 25),
           child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
           SizedBox(height: 50,),
           Row(
            children: [
              IconButton(icon:  const Icon(Icons.arrow_back_ios, color: Colors.black, size: 20,),
              onPressed: () {
                Navigator.pushNamed(context, WelcomeScreen.id);
              }),

             Container(
             padding: EdgeInsets.only(left: 70),
             child: Text('Sign Up', style: TextStyle(color: Colors.blue.shade800,
                 fontSize: 35,
                 fontWeight: FontWeight.bold,
               fontFamily: 'Anton'
               ),),
              ),
             ],
            ),
            SizedBox(height: 15.0,),
            Row(
              children: [
                Text('Email',
                  style: TextStyle(
                    color: Colors.blue.shade700,
                    fontFamily: 'Anton',
                    fontSize: 20,
                  ),),
              ],
            ),
            TextField(
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: InputDecoration(
                contentPadding:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue.shade800, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue.shade800, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Text('User Name',
                  style: TextStyle(
                    color: Colors.blue.shade700,
                    fontFamily: 'Anton',
                    fontSize: 20,
                  ),),
              ],
            ),
            TextField(
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: InputDecoration(
                contentPadding:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                  BorderSide(color: Colors.blue.shade800, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                  BorderSide(color: Colors.blue.shade800, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Text('Password',
                  style: TextStyle(
                    color: Colors.blue.shade700,
                    fontFamily: 'Anton',
                    fontSize: 20,
                  ),),
              ],
            ),
            TextField(
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: InputDecoration(
                contentPadding:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                  BorderSide(color: Colors.blue.shade800, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                  BorderSide(color: Colors.blue.shade800, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Text('Confirm Password',
                  style: TextStyle(
                    color: Colors.blue.shade700,
                    fontFamily: 'Anton',
                    fontSize: 20,
                  ),),
              ],
            ),
            TextField(
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: InputDecoration(
                contentPadding:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue.shade800, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue.shade800, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 50, horizontal: 50),
              child: Material(
                color: Colors.lightBlue.shade400,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                elevation: 10.0,
                child: MaterialButton(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  onPressed: () {
                    //Implement registration functionality.
                  },
                  minWidth: 200.0,
                  height: 50.0,
                  child: Text(
                    'Next',
                    style: TextStyle(color: Colors.white,
                    fontFamily:'Anton',
                      fontSize: 30.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
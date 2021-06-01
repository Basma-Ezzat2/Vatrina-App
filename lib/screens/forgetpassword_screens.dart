import 'package:flutter/material.dart';

import 'login_screens.dart';



class ForgetPasswordScreen extends StatefulWidget {
  static const String id = 'forgetpassword_Screen';
  @override
  _ForgetPasswordScreen createState() => _ForgetPasswordScreen();
}
class _ForgetPasswordScreen extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context){
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
            Container(
             padding: EdgeInsets.only(left: 60),
             child: Text('Forget Password', style: TextStyle(color: Colors.blue.shade800,
             fontSize: 25,
             fontWeight: FontWeight.bold,
             fontFamily: 'Source Sans Pro'
             ),),
             ),
            ],
           ),
            SizedBox(height: 55.0,),
             Row(
               children: [
                 Text('Email',
                   style: TextStyle(
                     color: Colors.blue.shade800,
                     fontFamily: 'Source Sans Pro',
                     fontSize: 20,
                   ),),
               ],
             ),
             TextField(
               onChanged: (value) {
                 //Do something with the user input.
               },
               decoration: InputDecoration(
                 hintText: 'Enter your email',
                 contentPadding:
                 EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
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
               height: 40.0,
             ),
             Padding(
               padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 50),
               child: Material(
                 color: Colors.lightBlue.shade500,
                 borderRadius: BorderRadius.all(Radius.circular(10.0)),
                 elevation: 8.0,
                 child: MaterialButton(
                   padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                   onPressed: () {Navigator.pushNamed(context, LoginScreen.id);},
                   minWidth: 200.0,
                   height: 50.0,
                   child: Text(
                     'Submit',
                     style: TextStyle(
                       fontFamily: 'Source Sans Pro',
                       color: Colors.white,
                       fontSize: 30.0,
                       fontWeight: FontWeight.w900,
                     ),
                   ),
                 ),
               ),
             ),

    ],),),),);
  }
}
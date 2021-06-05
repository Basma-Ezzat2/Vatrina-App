import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:provider/provider.dart';
import 'package:welcome_page/provider/modelHud.dart';
import 'package:welcome_page/screens/welcome_screens.dart';

import 'homepage_screens.dart';
import 'login_screens.dart';

class SignupScreen extends StatefulWidget {
  static const String id = 'signup_screen';
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
        body: ModalProgressHUD(
        inAsyncCall: Provider.of<ModelHud>(context).isLoading,
         child: Form(
          key: _formKey,
         child: Container(
           margin: EdgeInsets.symmetric(horizontal: 25),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            SizedBox(height: height * .1,),
            Row(
            children: [
              IconButton(icon:  const Icon(Icons.arrow_back_ios, color: Colors.black, size: 20,),
              onPressed: () {
                Navigator.pushNamed(context, WelcomeScreen.id);
              }),

             Container(
             padding: EdgeInsets.only(left: 60),
             child: Text('Sign Up', style: TextStyle(color: Colors.blue.shade800,
                 fontSize: 25,
                 fontWeight: FontWeight.bold,
               fontFamily: 'Source Sans Pro'
               ),),
              ),
             ],
            ),
           SizedBox(
             height: height * .02,),
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
            TextFormField(
              validator: (val){
                if(val.isEmpty ){
                  return'This value is Empty';
                }return null;
              },
              onSaved: (val){
              },
              decoration: InputDecoration(
                hintText: 'Enter your email',
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
                height: height * .02,
            ),
            Row(
              children: [
                Text('User Name',
                  style: TextStyle(
                    color: Colors.blue.shade800,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20,
                  ),),
              ],
            ),
            TextFormField(
              validator: (val){
                if(val.isEmpty ){
                  return'This value is Empty';
                }return null;
              },
              onSaved: (val){
              },
              decoration: InputDecoration(
                hintText: 'Enter your Name',
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
                height: height * .02,
            ),
            Row(
              children: [
                Text('Password',
                  style: TextStyle(
                    color: Colors.blue.shade800,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20,
                  ),),
              ],
            ),
            TextFormField(
              validator: (val){
                if(val.isEmpty ){
                  return'This value is Empty';
                }return null;
              },
              onSaved: (val){
              },
              decoration: InputDecoration(
                hintText: 'Enter your Password',
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
                height: height * .02,
            ),
            Row(
              children: [
                Text('Confirm Password',
                  style: TextStyle(
                    color: Colors.blue.shade800,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20,
                  ),),
              ],
            ),
            TextFormField(
              validator: (val){
                if(val.isEmpty ){
                  return'This value is Empty';
                }return null;
              },
              onSaved: (val){
              },
              decoration: InputDecoration(
                hintText: 'Enter your Pasword',
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
             height: height * .05,),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                child: Material(
                  color: Colors.lightBlue.shade500,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  elevation: 10.0,
                  child: MaterialButton(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    onPressed: (){
                      if(_formKey.currentState.validate()){
                      //do something
                    }},
                    minWidth: 200.0,
                    height: 30.0,
                    child: Text(
                      'Next',
                      style: TextStyle(color: Colors.white,
                        fontFamily:'Source Sans Pro',
                        fontSize: 30.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an Account?',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      color: Colors.grey[600],
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 5, width: 5,),
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, LoginScreen.id);},
                    child: Text(
                      'Log In',
                      style: TextStyle(
                          fontFamily: 'Source Sans Pro',
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),),
                  )
                ],
              ),

          ],
        ),
      ),
    )));
  }
}


//onPressed: () async { final modelhud =
//                     Provider.of<ModelHud>(context, listen: false);
//                     modelhud.changeisLoading(true);
//                       if(_formKey.currentState.validate()){
//                         _formKey.currentState.save();
//                       //do something
//                     }},
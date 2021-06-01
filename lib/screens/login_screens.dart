
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:welcome_page/provider/modelHud.dart';
import 'package:welcome_page/screens/forgetpassword_screens.dart';
import 'package:welcome_page/screens/signup_screens.dart';
import 'package:welcome_page/screens/welcome_screens.dart';
import 'signup_screens.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'components/homepage_screens.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();

}

class _LoginScreenState extends State<LoginScreen> {

  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  bool remember = false;
  final List<String> errors = [];

  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: ModalProgressHUD(
        inAsyncCall: Provider.of<ModelHud>(context).isLoading,
        child: Form(
          key: _formKey,
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
           child: Text('Log In', style: TextStyle(color: Colors.blue.shade800,
               fontSize: 25,
               fontWeight: FontWeight.bold,
             fontFamily: 'Source Sans Pro'
           ),)
           ),
          ],
          ),
          SizedBox(height: 15.0,),
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
              keyboardType: TextInputType.emailAddress,
              validator: (val){
                if(val.isEmpty || !val.contains('@')){
                  return'Invalid email';
                }return null;
              },
              onSaved: (val){
              },
            ),
            SizedBox(
              height: 40.0,
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
                  return'Invalid Password';
                }return null;
              },
              onSaved: (val){

              },
              decoration: InputDecoration(
                hintText: 'Enter your password',
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
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Checkbox(
              value: remember,
              activeColor: Colors.lightBlue,
              onChanged: (value) {
                setState(() {
                  remember = value;
                });
              },),
            Text("keep me Signed In ",
            style: TextStyle(
              fontFamily: 'Source sans Pro',
            ),),
                Spacer(),
                GestureDetector(
                  onTap: () {Navigator.pushNamed(context, ForgetPasswordScreen.id);},
                 child: Text   ("Forget Password?",
                    style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        color: Colors.grey.shade600,
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                    ),),),],),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 50),
              child: Material(
                color: Colors.lightBlue.shade500,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                elevation: 8.0,
                child: MaterialButton(
                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                  onPressed: () {
                    if(_formKey.currentState.validate()){
                      //do something
                    }
                    //Implement login functionality.
                  },
                  minWidth: 200.0,
                  height: 50.0,
                  child: Text(
                    'Log In',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'New to Vatrina?',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    color: Colors.grey[600],
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 5, width: 5,),
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, SignupScreen.id);},
                  child: Text(
                    'Sign up',
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
    ),),);
  }
}


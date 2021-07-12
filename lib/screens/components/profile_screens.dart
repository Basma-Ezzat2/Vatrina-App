import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../welcome_screens.dart';

class Profile extends StatefulWidget {
  static String routeName = '/profile';
  const Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
      appBar: AppBar(
      title: Center(
      child: Text(
      'Profile',
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    ),
    ),
    body: Container(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    ProfilePic(),
    SizedBox(
    height: 20,
    ),

    ProfileMenu(image:'icons/Profile blue.png',
    text: 'My Account',
    press: (){},
    ), ProfileMenu(image:'icons/pending payment.png',
    text: 'Pending Payments',
    press: (){},
    ), ProfileMenu(image:'icons/shipping.png',
    text: 'Shipping Address',
    press: (){},
    ),
      ProfileMenu(image:'icons/Cancel.png ',
        text: 'Log Out ',
        press: (){Navigator.pushNamed(context, WelcomeScreen.id);}
      ),
    ],
    ),
    ),
      ),
    );
  }
}

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({Key key,
    @required this.text,
    this.image,
    @required this.press})
      : super(key: key);
  final String text, image;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: FlatButton(
    onPressed:  press,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15),
    ),
    color: Color(0xFFF5F6F9),
    child: Row(
    children: [
    Image.asset(image,
    width: 20,),
    SizedBox(
    width: 20,
    ),
    Expanded(
    child: Text(
    text,
    style: TextStyle(
    color: Color.fromARGB(255,45,70,80),
    ),
    ),
    ),
      Icon(Icons.arrow_forward_ios)
    ],
    ),
    ));
  }
}

class ProfilePic extends StatelessWidget {
  const ProfilePic({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
          fit: StackFit.expand,
          overflow: Overflow.visible,
          children: [
      CircleAvatar(
      backgroundImage: AssetImage('assets/images/About1.png'),
    ),
      Positioned(
    bottom: 0,
      right: -12,
      child: SizedBox(
        width: 46,
        height: 46,
        child: FlatButton(
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
              side: BorderSide(color: Colors.white),
            ),
            color: Color(0xFFF5F6F9),
            onPressed: () {},
            child: Image.asset('icons/camera.png')),
      ),
    ),
          ],
      ),
    );
  }
}





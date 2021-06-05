import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:welcome_page/screens/signup_screens.dart';
import 'package:welcome_page/screens/welcome_screens.dart';

import '../main.dart';
import 'forgetpassword_screens.dart';
import 'homepage_screens.dart';
import 'login_screens.dart';



class Data {
  final String imageurl;
  final String Describtion;

  Data(this.imageurl, this.Describtion);
}

class Pview extends StatefulWidget {
  static const String id = 'welcome_screen';
  const Pview({Key key}) : super(key: key);

  @override
  _PviewState createState() => _PviewState();
}

class _PviewState extends State<Pview> {
  final  PageController controller = PageController(
    initialPage: 0,
  );
  var currentindex = 0;
  final List<Data> Mydata = [
    Data('assets/images/About1.png', 'Find The Best Product.'),
    Data('assets/images/About2.png', 'Shopping From Anywhere.'),
    Data('assets/images/About3.png', 'Delivering Anywhere.'),
  ];

  @override


  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Builder(
              builder: (ctx) => PageView(
                onPageChanged: (val) {
                  setState(() {
                    currentindex = val;

                  });
                },

                children: Mydata.map(
                      (item) => Container(
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 90,
                        ),
                        Image(
                          image: ExactAssetImage(item.imageurl),
                        ),
                        SizedBox(
                          height: 80,
                        ),
                        Text(
                          item.Describtion,
                          style: TextStyle(
                            color: Color.fromARGB(255, 31, 128, 171),
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                ).toList(),
              ),
            ),
            Align(alignment: Alignment(0, 0.5), child: indicator(currentindex)),
            Builder(
              builder: (ctx) => Align(
                alignment: Alignment(0, .8),
                child: FlatButton(
                  color: Colors.white,
                  child: Text(
                    'Get Started!',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                      color: Colors.black,
                    ),
                  ),
                  onPressed: () {Navigator.pushNamed(context, WelcomeScreen.id);},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class indicator extends StatelessWidget {
  final int index;
  indicator(this.index);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildContainer(index == 0 ? Colors.amber : Colors.blueGrey),
        buildContainer(index == 1 ? Colors.amber : Colors.blueGrey),
        buildContainer(index == 2 ? Colors.amber : Colors.blueGrey),
      ],
    );
  }

  Container buildContainer(Color color) {
    return Container(
      margin: EdgeInsets.all(5),
      height: 15,
      width: 15,
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
    );
  }
}
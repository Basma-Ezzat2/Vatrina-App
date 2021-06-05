
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:welcome_page/screens/components/cart_screens.dart';
import 'package:welcome_page/screens/components/favorites_screens.dart';

import 'components/home.dart';
import 'components/profile_screens.dart';



class HomepageScreen extends StatefulWidget {
  static const String id = 'homepage_screen';

  @override
  _HomepageScreenState createState() => _HomepageScreenState();
}
class _HomepageScreenState extends State<HomepageScreen> {
  PageController _pageController =PageController(
    initialPage: 0,
  );
  List<Widget> _screens =[
    Home(),
    Favourites(),
    Cart(),
    Profile(),

  ];
  void _onPageChanged(page){
    setState((){
        _currentIndex = page;

    });
  }
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:PageView(
        onPageChanged: _onPageChanged,
        controller: _pageController,
        children: _screens,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: const Icon(Icons.home,),
              // ignore: deprecated_member_use
              title: Text(
                'Home',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Source Sans Pro',
                ),
              ),
              backgroundColor: Colors.lightBlue.shade200),
          BottomNavigationBarItem(
              icon: const Icon(Icons.favorite_border, ),
              // ignore: deprecated_member_use
              title: Text(
                'Favorites',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Source Sans Pro',
                ),
              ),
              backgroundColor: Colors.lightBlue.shade200),
          BottomNavigationBarItem(
              icon: const Icon(
                Icons.shopping_cart_outlined, ),
              // ignore: deprecated_member_use
              title: Text(
                'Cart',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Source Sans Pro',
                ),
              ),
              backgroundColor: Colors.lightBlue.shade200),
          BottomNavigationBarItem(
              icon: Icon(Icons.perm_identity_sharp,),
              // ignore: deprecated_member_use
              title: Text(
                'Profile',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Source Sans Pro',
                ),
              ),
              backgroundColor: Colors.lightBlue.shade200),
        ],
        onTap: (index) {
          _pageController.jumpToPage(index);
          _currentIndex = index;
          setState(() {
          });
        },
      ),);
  }
  }

class DataSearch  extends SearchDelegate<String> {

  @override
  List<Widget> buildActions(BuildContext context) {
    return[IconButton(icon: Icon(Icons.clear), onPressed: (){})];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: (){Navigator.pushNamed(context, HomepageScreen.id);});
  }

  @override
  // ignore: missing_return
  Widget buildResults(BuildContext context) {

  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index)=>ListTile(),);
  }
}

//leading: IconButton(
//             onPressed: () {},
//             iconSize: 25,
//             icon: const Icon(Icons.menu, color: Colors.white,),
//           ),
//           actions: [
//             IconButton(
//               icon: const Icon(Icons.notifications_outlined),
//               onPressed: () {},),
//          static const String id = 'homepage_screen';   ],

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomepageScreen extends StatefulWidget {
  static const String id = 'homepage_screen';

  @override
  _HomepageScreenState createState() => _HomepageScreenState();
}
class _HomepageScreenState extends State<HomepageScreen> {
  PageController _pageController =PageController();
  List<Widget> _screens =[];
  void _onPageChanged(int index){}
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: Colors.lightBlue.shade500,
    toolbarHeight: 170,
    elevation: 6,
    flexibleSpace: Container(
    margin: EdgeInsets.only(bottom: 50),
    decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage('assets/images/vatrina.png'),
    fit: BoxFit.cover,
    ),
    ),
    ),

    title: Container(
    margin: EdgeInsets.only(top: 90),
    padding: EdgeInsets.only(
    left: 10,
    right: 10,
    bottom: 5,
    ),
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.only(
    topLeft: Radius.circular(10),
    topRight: Radius.circular(10),
    bottomLeft: Radius.circular(10),
    bottomRight: Radius.circular(10),
    ),
    ),
    child: Row(
    children: <Widget>[
    Icon(Icons.search, color: Colors.lightBlue.shade200,),
    Expanded(
    child: TextField(
    onTap: () {showSearch(context: context, delegate: DataSearch());},
    decoration: InputDecoration(
    hintText: "Search",
    enabledBorder: InputBorder.none,
    focusedBorder: InputBorder.none,
    hintStyle: TextStyle(
    fontSize: 20,
    fontFamily: 'Source Sans Pro'
    ),),),
    ),
    ],
    ),
    ),
    ),
      body: PageView(
        controller: _pageController,
        children: _screens,
        onPageChanged: _onPageChanged,
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
          setState(() {
            _currentIndex = index;
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
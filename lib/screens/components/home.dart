import 'package:flutter/material.dart';
import 'package:welcome_page/screens/components/categories.dart';
import 'package:welcome_page/screens/components/product.dart';
import 'package:welcome_page/screens/components/veiw.dart';
import '../homepage_screens.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>
  with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 7, vsync: this);
  }


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
      body: Container(
        height: double.infinity,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          scrollDirection: Axis.vertical,
        children: <Widget>[
          SizedBox(height: 15.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text('Categories',
              style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 20.0,
                  color: Colors.lightBlue.shade500,
                  fontWeight: FontWeight.bold)),
            IconButton(icon:  const Icon(Icons.arrow_forward_ios_outlined, color: Colors.lightBlue, size: 20,),
                onPressed: () {
                }),
                ]),
          Categories(),
          SizedBox(height: 20.0),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
          Text('New Arrival',
              style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 20.0,
                  color: Colors.lightBlue.shade500,
                  fontWeight: FontWeight.bold)),
                InkWell(onTap: (){Navigator.pushNamed(context, View.id);},
                 child: Text('View All',
                      style: TextStyle(
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20.0,
                          color: Colors.lightBlue.shade500,
                          fontWeight: FontWeight.bold)),
                ),
              ]),
          Container(
            height: 200,
            child: Products(),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
          Text('Best Popular',
              style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 20.0,
                  color: Colors.lightBlue.shade500,
                  fontWeight: FontWeight.bold)),
                InkWell(onTap: (){Navigator.pushNamed(context, View.id);},
                  child: Text('View All',
                      style: TextStyle(
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20.0,
                          color: Colors.lightBlue.shade500,
                          fontWeight: FontWeight.bold)),
                ),

          ]),
          Container(
            height: 200,
            child: Products(),
          ),
          SizedBox(height: 20.0),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
          Text('Best Seller',
              style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 20.0,
                  color: Colors.lightBlue.shade500,
                  fontWeight: FontWeight.bold)),
                InkWell(onTap: (){Navigator.pushNamed(context, View.id);},
                  child: Text('View All',
                      style: TextStyle(
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20.0,
                          color: Colors.lightBlue.shade500,
                          fontWeight: FontWeight.bold)),
                ),

              ]),
          Container(
            height: 200,
            child: Products(),
          ),
        ],
      ),
      )
      );
  }
}
class DataSearch extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [IconButton(icon: Icon(Icons.clear), onPressed: () {})];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {
          Navigator.pushNamed(context, HomepageScreen.id);
        });
  }

  @override
  // ignore: missing_return
  Widget buildResults(BuildContext context) {}

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(),
    );
  }
}
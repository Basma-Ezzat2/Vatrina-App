import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:welcome_page/models/cart.dart';
import '../homepage_screens.dart';

class Cart extends StatefulWidget {
  static const String id = 'cart_screen';

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> with SingleTickerProviderStateMixin {
  var data = cartData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.lightBlue.shade500,
        toolbarHeight: 140,
        elevation: 2,
        flexibleSpace: Container(
          margin: EdgeInsets.only(bottom: 50),
          alignment: Alignment.topCenter,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/vatrina.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Container(
          height: 40,
          alignment: Alignment.bottomCenter,
          margin: EdgeInsets.only(top: 65),
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
              Icon(
                Icons.search,
                color: Colors.lightBlue.shade200,
              ),
              Expanded(
                child: TextField(
                  onTap: () {
                    showSearch(context: context, delegate: DataSearch());
                  },
                  decoration: InputDecoration(
                    hintText: "Search",
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    hintStyle:
                    TextStyle(fontSize: 15, fontFamily: 'Source Sans Pro'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.only(left: 20.0),
              itemBuilder: (context, index) {
                return Container(
                  width: double.infinity,
                  height: 130,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 70,
                          height: 95,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 1,
                                  color: Colors.black.withOpacity(0.15),
                                  offset: Offset(1, 4))
                            ],
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.all(5),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Image.network(
                              data.products[index].img,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                            padding: EdgeInsets.all(5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  '${data.products[index].title}',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text('${data.products[index].price}\$'),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: 30,
                                      height: 20,
                                      child: MaterialButton(
                                        elevation: 0,
                                        color: Colors.grey[300],
                                        onPressed: () {},
                                        child: Center(
                                            child: Icon(
                                              Icons.horizontal_rule_rounded,
                                              size: 15,
                                            )),
                                      ),
                                    ),
                                    SizedBox(
                                        width: 30,
                                        height: 20,
                                        child: Center(child: Text('1'))),
                                    SizedBox(
                                      width: 30,
                                      height: 20,
                                      child: MaterialButton(
                                        elevation: 0,
                                        color: Colors.grey[300],
                                        onPressed: () {},
                                        child: Center(
                                            child: Icon(
                                              Icons.add,
                                              color: Colors.lightBlueAccent,
                                              size: 15,
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )),
                      ),
                      Expanded(
                        child: Container(
                            padding: EdgeInsets.all(5),
                            child: Center(
                              child: Icon(
                                Icons.delete,
                                color: Colors.lightBlueAccent,
                              ),
                            )),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1, color: Colors.grey[300]),
                      )),
                );
              },
              itemCount: data.products.length,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 1, color: Colors.grey[300]),
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Total',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        '110\$',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.lightBlueAccent,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Expanded(
                    child: SizedBox(
                      width: 50,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: MaterialButton(
                      onPressed: () {},
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          side: BorderSide.none,
                          borderRadius: BorderRadius.circular(22)),
                      color: Colors.lightBlueAccent,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'checkout'.toUpperCase(),
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          ),
                          Icon(
                            Icons.check_circle_sharp,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
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

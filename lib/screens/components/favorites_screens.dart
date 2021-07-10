import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:welcome_page/models/product.dart';
import '../homepage_screens.dart';

class Favourites extends StatefulWidget {
  static const String id = 'Favourites_screen';

  @override
  _FavouritesState createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites>
    with SingleTickerProviderStateMixin {
  var data = favProductsData;

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
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
          crossAxisSpacing: 5,
          // mainAxisExtent: 1,
          mainAxisSpacing: 4,
        ),
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.only(left: 20.0),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridTile(
              child: Container(
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
                padding: EdgeInsets.all(10),
                child: Padding(
                  padding: const EdgeInsets.only(
                      bottom: 22.0, top: 10, left: 5, right: 5),
                  child: Image.network(
                   data[index].img,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              header: Container(
                padding: EdgeInsets.all(5),
                alignment: Alignment.centerRight,
                child: Icon(
                  Icons.favorite,
                  size: 15,
                  color: Colors.lightBlueAccent,
                ),
              ),
              footer: Padding(
                padding: const EdgeInsets.only(bottom: 5.0, left: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          '${data[index].title}',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 8,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          '${data[index].price}\$',
                          style: TextStyle(
                              color: Colors.lightBlueAccent,
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.lightBlueAccent,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 8,
                            ),
                            Text(
                              '${data[index].reviews}',
                              style:
                              TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: data.length,
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


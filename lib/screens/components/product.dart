import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
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
                  child: Image.asset(
                    'assets/images/product-placeholder.png',
                    color: Colors.blueGrey,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              header: Container(
                padding: EdgeInsets.all(5),
                alignment: Alignment.centerRight,
                child: Icon(
                  Icons.favorite_border,
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
                          'T-shirt',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          '49.99\$',
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
                              '4.5',
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
        itemCount: 2,
      ),
    );
  }
}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

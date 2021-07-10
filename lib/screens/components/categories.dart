import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children : [
          Category(
            image_location: 'icons/Apparel.png',
            image_caption: 'Apparel',
          ),
          Category(
            image_location: 'icons/Beauty.png',
            image_caption: 'Beauty',
          ),


          Category(
            image_location: 'icons/Shoes.png',
            image_caption: 'Shoes',
          ),


          Category(
            image_location: 'icons/Electronics.png',
            image_caption: 'Electronic',
          ),
          Category(
            image_location: 'icons/Stationary.png',
            image_caption: 'Stationary',
          ),
          Category(
            image_location: 'icons/Furniture.png',
            image_caption: 'Furniture',
          ),
        ],
      ),
    );
  }}
class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;
  Category({
    this.image_caption,
    this.image_location,
});
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(2),
    child: InkWell(onTap: (){},
    child: Container(
      width: 100,
      child: ListTile(
        title: Image.asset(image_location,
        width: 80,),
        subtitle: Container(
          alignment: Alignment.topCenter,
         child: Text(image_caption),
      ),
    ),
    ),
    ),
    );
  }
}
//{"icon": "icons/Apparel.png", "text": "Apparel"},
//         {"icon": "icons/Beauty.png", "text": "Beauty"},
//         {"icon": "icons/Shoes.png", "text": "Shoes"},
//         {"icon": "icons/Electronics.png", "text": "Electronics"},
//         {"icon": "icons/Stationary.png", "text": "Stationary"},
//         {"icon": "icons/Furniture.png", "text": "Furniture"},

import 'dart:convert';

class Product {
  final String title;
  final String id;
  final String img;
  final double price;
  final double newPrice;
  final double reviews;
  final DateTime dateOfAdd;
  final bool isFav;
  Product({
    this.title,
    this.id,
    this.img,
    this.price,
    this.newPrice,
    this.reviews,
    this.dateOfAdd,
    this.isFav,
  });

  Product copyWith({
    String title,
    String id,
    String img,
    double price,
    double newPrice,
    double reviews,
    DateTime dateOfAdd,
    bool isFav,
  }) {
    return Product(
      title: title ?? this.title,
      id: id ?? this.id,
      img: img ?? this.img,
      price: price ?? this.price,
      newPrice: newPrice ?? this.newPrice,
      reviews: reviews ?? this.reviews,
      dateOfAdd: dateOfAdd ?? this.dateOfAdd,
      isFav: isFav ?? this.isFav,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'id': id,
      'img': img,
      'price': price,
      'newPrice': newPrice,
      'reviews': reviews,
      'dateOfAdd': dateOfAdd.millisecondsSinceEpoch,
      'isFav': isFav,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      title: map['title'],
      id: map['id'],
      img: map['img'],
      price: map['price'],
      newPrice: map['newPrice'],
      reviews: map['reviews'],
      dateOfAdd: DateTime.fromMillisecondsSinceEpoch(map['dateOfAdd']),
      isFav: map['isFav'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Product(title: $title, id: $id, img: $img, price: $price, newPrice: $newPrice, reviews: $reviews, dateOfAdd: $dateOfAdd, isFav: $isFav)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Product &&
        other.title == title &&
        other.id == id &&
        other.img == img &&
        other.price == price &&
        other.newPrice == newPrice &&
        other.reviews == reviews &&
        other.dateOfAdd == dateOfAdd &&
        other.isFav == isFav;
  }

  @override
  int get hashCode {
    return title.hashCode ^
    id.hashCode ^
    img.hashCode ^
    price.hashCode ^
    newPrice.hashCode ^
    reviews.hashCode ^
    dateOfAdd.hashCode ^
    isFav.hashCode;
  }
}

const String imgUrl =
    'https://sc02.alicdn.com/kf/Hae6f0f0eb91244288522f985e746a5baX/2754643/Hae6f0f0eb91244288522f985e746a5baX.jpg';
List<Product> productsData = [
  Product(
    id: '1',
    img: imgUrl,
    price: 52,
    isFav: true,
    reviews: 4.5,
    title: 'Women Olive Green Trousers Regular Fit',
  ),
  Product(
    id: '1',
    img: imgUrl,
    price: 44,
    isFav: false,
    reviews: 4.5,
    title: 'Women Olive Green',
  ),
  Product(
    id: '1',
    img: imgUrl,
    price: 52,
    isFav: false,
    reviews: 4.5,
    title: 'Women Fit',
  ),
  Product(
    id: '1',
    img: imgUrl,
    price: 52,
    isFav: true,
    reviews: 4.5,
    title: 'Women Olive ',
  ),
  Product(
    id: '1',
    img: imgUrl,
    price: 44,
    isFav: false,
    reviews: 4.5,
    title: 'Women Olive Green',
  ),
  Product(
    id: '1',
    img: imgUrl,
    price: 52,
    isFav: false,
    reviews: 4.5,
    title: 'Women Trousers',
  ),
];
List<Product> favProductsData = [
  Product(
    id: '1',
    img: imgUrl,
    price: 52,
    isFav: true,
    reviews: 4.5,
    title: 'Women Olive Green',
  ),
  Product(
    id: '1',
    img: imgUrl,
    price: 44,
    isFav: true,
    reviews: 4.5,
    title: 'Women Olive Green',
  ),
  Product(
    id: '1',
    img: imgUrl,
    price: 52,
    isFav: true,
    reviews: 4.5,
    title: 'Women Trousers ',
  ),
  Product(
    id: '1',
    img: imgUrl,
    price: 52,
    isFav: true,
    reviews: 4.5,
    title: 'Women Olive Green',
  ),
  Product(
    id: '1',
    img: imgUrl,
    price: 44,
    isFav: true,
    reviews: 4.5,
    title: 'Women Olive Green',
  ),
  Product(
    id: '1',
    img: imgUrl,
    price: 52,
    isFav: true,
    reviews: 4.5,
    title: 'Women Trousers ',
  ),
  Product(
    id: '1',
    img: imgUrl,
    price: 52,
    isFav: true,
    reviews: 4.5,
    title: 'Women Olive Green',
  ),
  Product(
    id: '1',
    img: imgUrl,
    price: 44,
    isFav: true,
    reviews: 4.5,
    title: 'Women Olive Green',
  ),
  Product(
    id: '1',
    img: imgUrl,
    price: 52,
    isFav: true,
    reviews: 4.5,
    title: 'Women Trousers ',
  ),
];
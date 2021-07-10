import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:welcome_page/models/product.dart';

class Cart {
  String id;
  String userId;
  List<Product> products;
  double totalPrice;
  Cart({
    this.id,
    this.userId,
    this.products,
    this.totalPrice,
  });

  Cart copyWith({
    String id,
    String userId,
    List<Product> products,
    double totalPrice,
  }) {
    return Cart(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      products: products ?? this.products,
      totalPrice: totalPrice ?? this.totalPrice,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'products': products?.map((x) => x.toMap())?.toList(),
      'totalPrice': totalPrice,
    };
  }

  factory Cart.fromMap(Map<String, dynamic> map) {
    return Cart(
      id: map['id'],
      userId: map['userId'],
      products:
      List<Product>.from(map['products']?.map((x) => Product.fromMap(x))),
      totalPrice: map['totalPrice'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Cart.fromJson(String source) => Cart.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Cart(id: $id, userId: $userId, products: $products, totalPrice: $totalPrice)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Cart &&
        other.id == id &&
        other.userId == userId &&
        listEquals(other.products, products) &&
        other.totalPrice == totalPrice;
  }

  @override
  int get hashCode {
    return id.hashCode ^
    userId.hashCode ^
    products.hashCode ^
    totalPrice.hashCode;
  }
}

Cart cartData = Cart(
  id: '1',
  userId: '1',
  products: productsData,
);
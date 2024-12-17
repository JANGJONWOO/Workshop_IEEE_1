import 'package:book_app/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  final List<Product> _shop = [
    Product(
      name: "Product 1",
      price: 99.99,
      desc: "This is an book",
    ),
    Product(
      name: "Product 2",
      price: 99.99,
      desc: "This is an book",
    ),
    Product(
      name: "Product 3",
      price: 99.99,
      desc: "This is an book",
    ),
  ];
  // user cart
  final List<Product> _usercart = [];

  // shop list

  List<Product> get shop => _shop;

  // cart
  List<Product> get cart => _usercart;

  // add to cart
  void addItemToCart(Product product) {
    _usercart.add(product);
    notifyListeners();
  }

  // remove from cart
  void removeFromCart(Product product) {
    _usercart.remove(product);
    notifyListeners();
  }

  void removeItemFromCart(Product product) {}
}

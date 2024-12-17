import 'package:book_app/models/shop.dart';
import 'package:book_app/pages/cart_page.dart';
import 'package:book_app/pages/intro_page.dart';
import 'package:book_app/pages/shop_page.dart';
import 'package:book_app/themes/light_mode.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Shop(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Readers Heaven",
      home: ShopBag(),
      theme: lightmode,
      routes: {
        'intro_page': (context) => IntroPage(),
        '/shop_page': (context) => ShopBag(),
        '/cart_page': (context) => CartPage(),
      },
    );
  }
}

import 'package:book_app/models/shop.dart';
import 'package:book_app/pages/cart_page.dart';
import 'package:book_app/pages/intro_page.dart';
import 'package:book_app/pages/shop_page.dart';
import 'package:book_app/themes/light_mode.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:book_app/pages/login_page.dart';
import 'package:book_app/pages/signup_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
  );
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
      home:const IntroPage(),
      theme: lightmode,
      routes: {
        'intro_page': (context) => IntroPage(),
        '/login_page': (context) => const LoginPage(), // Existing Login Page
        '/signup_page': (context) => const SignupPage(), // Exist
        '/shop_page': (context) => ShopBag(),
        '/cart_page': (context) => CartPage(),
      },
    );
  }
}

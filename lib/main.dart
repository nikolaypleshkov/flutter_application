import 'package:flutter/material.dart';
import 'login.dart';
import 'shop_items.dart';
import 'checkout.dart';

void main() {
  runApp(MaterialApp(
    title: 'Page1',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
          child: PageViewer(),
        ),
      ),
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
    );
  }
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => ShopItems(),
        '/checkout': (BuildContext context) => Checkout()
      },
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
    );
  }
}

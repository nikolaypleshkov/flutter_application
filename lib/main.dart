import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(MaterialApp(
    title:'Page1',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical:0, horizontal:0),
          child: PageViewer(),
        ),
      ),
      theme: ThemeData(
        brightness: Brightness.dark,

      ),
    );
  }
}

class MainApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Home'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }

}


import 'package:flutter/material.dart';
import 'package:flutter_application_1/placeholder_widget.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    PlaceholderWidget(Colors.white),
    PlaceholderWidget(Colors.red),
    PlaceholderWidget(Colors.orange)
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Music',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
      ),
      //appbar - false;
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.library_music_rounded),
            title: new Text("Library"),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.play_circle_fill_rounded),
            title: new Text("Listen Now"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: new Text("Search"),
          )
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

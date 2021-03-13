import 'package:flutter/material.dart';

final Color backgroudnColor = Color(0xFF4A4A58);
bool isMenuClosed = true;
double screenWidth, screenHeight;

final Duration duration = const Duration(milliseconds: 300);

class MenuDashBoard extends StatefulWidget {
  @override
  _MenuDashBoardState createState() => _MenuDashBoardState();
}

class _MenuDashBoardState extends State<MenuDashBoard> {
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;
    return Scaffold(
      backgroundColor: backgroudnColor,
      body: Stack(
        children: <Widget>[
          menu(context),
          dashboard(context),
        ],
      ),
    );
  }

  Widget menu(context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Inbox",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(height: 10),
            Text("Starred",
                style: TextStyle(color: Colors.white, fontSize: 20)),
            SizedBox(height: 10),
            Text("Sent", style: TextStyle(color: Colors.white, fontSize: 20)),
            SizedBox(height: 10),
            Text("Trash", style: TextStyle(color: Colors.white, fontSize: 20)),
            SizedBox(height: 10),
            Text("Spam", style: TextStyle(color: Colors.white, fontSize: 20)),
            SizedBox(height: 10),
            Text("Drafts", style: TextStyle(color: Colors.white, fontSize: 20)),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  Widget dashboard(context) {
    return AnimatedPositioned(
      duration: duration,
      top: isMenuClosed ? 0 : 0.2 * screenHeight,
      bottom: isMenuClosed ? 0 : 0.2 * screenHeight,
      left: isMenuClosed ? 0 : 0.6 * screenWidth,
      right: isMenuClosed ? 0 : -0.4 * screenWidth,
      child: Material(
        animationDuration: duration,
        borderRadius: BorderRadius.all(Radius.circular(40)),
        elevation: 8,
        color: backgroudnColor,
        child: Container(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 48),
          child: Column(
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    InkWell(
                      child: Icon(Icons.menu, color: Colors.white),
                      onTap: () {
                        setState(() {
                          isMenuClosed = !isMenuClosed;
                        });
                      },
                    ),
                    Text(
                      "Artix Mail",
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                    Icon(Icons.settings, color: Colors.white),
                  ]),
            ],
          ),
        ),
      ),
    );
  }
}

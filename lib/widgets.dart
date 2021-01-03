import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyLogoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var assetsImage = new AssetImage('img/sitepoint.png');
    var img = new Image(
      image: assetsImage,
      width: 48.0,
      height: 48.0,
    );
  }
}

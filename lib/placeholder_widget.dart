import 'package:flutter/material.dart';

class PlaceholderWidget extends StatelessWidget {
  final Color color;
  String _title = "Music";

  PlaceholderWidget(this.color);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: color,
    );
  }
}

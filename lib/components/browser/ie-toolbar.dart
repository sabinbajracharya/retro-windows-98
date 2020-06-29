import 'package:flutter/material.dart';
import 'package:retrowindows98/components/browser/vertical-bar.dart';

class IEToolbar extends StatelessWidget {
  final spacing = 8.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 6.0, bottom: 6.0),
      child: Row(
        children: [
          VerticalBar(height: 32.0, width: 4.0),
          Container(width: spacing,),
          Text("File"),
          Container(
            width: spacing,
          ),
          Text("Edit"),
          Container(
            width: spacing,
          ),
          Text("View"),
          Container(
            width: spacing,
          ),
          Text("Go"),
          Container(
            width: spacing,
          ),
          Text("Favorites"),
          Container(
            width: spacing,
          ),
          Text("Help"),
          Container(
            width: spacing,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:retrowindows98/components/toolbar-button.dart';

class IETitleBar extends StatelessWidget {
  final double width;
  final String faviconPath;
  final String title;
  final Function close;

  const IETitleBar(
      {Key key, this.faviconPath, this.width, this.title, this.close})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 26,
      width: width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color.fromRGBO(6, 0, 111, 1),
            Color.fromRGBO(11, 49, 155, 1),
            Color.fromRGBO(15, 81, 176, 1),
            Color.fromRGBO(17, 107, 195, 1),
          ],
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(2.0),
            child: Image.asset(faviconPath),
          ),
          Text(
            title,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          ),
          Spacer(flex: 1),
          ToolBarButton(
            "X",
            callback: () {
              close();
            },
          ),
        ],
      ),
    );
  }
}
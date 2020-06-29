import 'package:flutter/material.dart';
import 'package:retrowindows98/components/clock.dart';

class TrayBar extends StatelessWidget {
  final colorWhite = Color.fromRGBO(255, 255, 255, 1);
  final colorGrey = Color.fromRGBO(128, 128, 128, 1);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 100,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            width: 1.0,
            color: colorGrey,
          ),
          left: BorderSide(
            width: 1.0,
            color: colorGrey,
          ),
          right: BorderSide(
            width: 1.0,
            color: colorWhite,
          ),
          bottom: BorderSide(
            width: 1.0,
            color: colorWhite,
          ),
        ),
      ),
      child: Row(
        children: [
          Spacer(flex: 1),
          Clock(),
          Container(width: 4.0,)
        ],
      ),
    );
  }
}

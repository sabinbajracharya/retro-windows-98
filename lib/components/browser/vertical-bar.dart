import 'package:flutter/widgets.dart';

class VerticalBar extends StatelessWidget {
  final colorWhite = const Color.fromRGBO(255, 255, 255, 1);
  final colorBlack = const Color.fromRGBO(128, 128, 128, 1);

  final double height;
  final double width;

  const VerticalBar({Key key, this.height, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            width: 1.0,
            color: colorWhite,
          ),
          left: BorderSide(
            width: 1.0,
            color: colorWhite,
          ),
          right: BorderSide(
            width: 1.0,
            color: colorBlack,
          ),
          bottom: BorderSide(
            width: 1.0,
            color: colorBlack,
          ),
        ),
      ),
    );
  }
}

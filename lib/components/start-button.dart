import 'package:flutter/material.dart';


class StartButton extends StatefulWidget {
  final colorWhite = Color.fromRGBO(255, 255, 255, 1);
  final colorBlack = Color.fromRGBO(128, 128, 128, 1);

  @override
  State<StatefulWidget> createState() {
    return _StartButtonState();
  }
}

class _StartButtonState extends State<StartButton> {

  var isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTapDown: (data) {
          setState(() {
            isPressed = true;
          });
        },
        onTapUp: (data) {
          setState(() {
            isPressed = false;
          });
        },
              child: Align(
          alignment: Alignment.centerLeft,
                child: Container(
                  height: 30,
                  width: 80,
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  width: 2.0,
                  color: isPressed ? widget.colorBlack : widget.colorWhite,
                ),
                left: BorderSide(
                  width: 4.0,
                  color: isPressed ? widget.colorBlack : widget.colorWhite,
                ),
                right: BorderSide(
                  width: 4.0,
                  color: isPressed ? widget.colorWhite : widget.colorBlack,
                ),
                bottom: BorderSide(
                  width: 1.0,
                  color: isPressed ? widget.colorWhite : widget.colorBlack,
                ),
              ),
            ),
            // alignment: Alignment.centerLeft,
            child: Image.asset("assets/images/start-button.png"),
          ),
        ),
      );
  }

}
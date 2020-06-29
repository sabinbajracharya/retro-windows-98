import 'package:flutter/cupertino.dart';

class ToolBarButton extends StatefulWidget {
  final colorWhite = const Color.fromRGBO(255, 255, 255, 1);
  final colorBlack = const Color.fromRGBO(128, 128, 128, 1);
  final colorLightGrey = const Color.fromRGBO(179, 179, 179, 1);

  final String text;
  final Function callback;

  const ToolBarButton(this.text, {Key key, this.callback}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ToolBarButtonState();
  }
}

class _ToolBarButtonState extends State<ToolBarButton> {
  var isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          isPressed = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          isPressed = false;
        });
      },
      onTap: () {
        widget.callback();
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0),
          decoration: BoxDecoration(
            color: widget.colorLightGrey,
            border: Border(
              top: BorderSide(
                width: 1.0,
                color: isPressed ? widget.colorBlack : widget.colorWhite,
              ),
              left: BorderSide(
                width: 1.0,
                color: isPressed ? widget.colorBlack : widget.colorWhite,
              ),
              right: BorderSide(
                width: 1.0,
                color: isPressed ? widget.colorWhite : widget.colorBlack,
              ),
              bottom: BorderSide(
                width: 1.0,
                color: isPressed ? widget.colorWhite : widget.colorBlack,
              ),
            ),
          ),
          child: Text(
            widget.text,
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}

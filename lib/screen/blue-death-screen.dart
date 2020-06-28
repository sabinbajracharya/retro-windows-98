import 'package:flame/flame.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class BlueDeathScreen extends StatelessWidget {
  final Function showBootLoader;
  final focusNode = FocusNode();

  final defaultTitle = "Windows";
  final defaultDescription = """
An exception 06 has occured at 0028:C11B3ADC in VxD DiskTSD(03) +
00001660. This was called from 0028:C11B40CB in VxD voltrack(04) +
00000000. It may be possible to continue normally.
  """;
  final defaultOptions = [
    "* Press any key to attempt to continue",
    "* Press CTRL+ALT+RESET to restart your computer. you willlose any unsaved information in all applicaitons.",
  ];
  final defaultBottomMsg = "Press any key to continue";

  final bgColor = Color.fromRGBO(6, 0, 193, 1);

  BlueDeathScreen({@required this.showBootLoader}) {
    focusNode.requestFocus();
    Flame.audio.play("BSOD.mp3");
  }

  @override
  Widget build(BuildContext context) {
    return RawKeyboardListener(
      autofocus: true,
      focusNode: focusNode,
      onKey: (event) {
        if (event.runtimeType == RawKeyUpEvent) {
          showBootLoader();
        }
      },
      child: Material(
        textStyle: TextStyle(
            letterSpacing: 1.5,
            height: 1.2,
            color: Colors.white.withAlpha(235),
            fontFamily: 'lucida-console',
            fontWeight: FontWeight.bold,
            fontSize: 24.0),
        child: Container(
          padding: EdgeInsets.only(
            left: 120.0,
            right: 120.0,
          ),
          color: bgColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  padding: EdgeInsets.only(
                    left: 8.0,
                    right: 8.0,
                  ),
                  color: Colors.grey.shade500,
                  child: Text(
                    defaultTitle,
                    style: TextStyle(
                      color: bgColor,
                    ),
                  ),
                ),
              ),
              Container(height: 28.0),
              Text(defaultDescription),
              for (var i in defaultOptions) Text(i),
              Container(height: 28.0),
              Center(
                child: Text(defaultBottomMsg),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

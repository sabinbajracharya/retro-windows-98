import 'package:flutter/material.dart';
import 'package:retrowindows98/components/start-button.dart';
import 'package:retrowindows98/components/tray-bar.dart';

class StartBar extends StatelessWidget {
  const StartBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width,
      height: 36.0,
      decoration: BoxDecoration(
        border: Border(
            top: BorderSide(
              width: 1.0,
              color: Color.fromRGBO(244, 244, 244, 1),
            ),
            bottom: BorderSide(
              width: 1.0,
              color: Color.fromRGBO(78, 78, 78, 1),
            )),
        color: Color.fromRGBO(179, 179, 179, 1),
      ),
      child: Row(
        children: [
          Container(width: 4.0,),
          StartButton(),
          Spacer(flex: 1),
          TrayBar(),
          Container(width: 4.0,),
        ],
      ),
    );
  }
}

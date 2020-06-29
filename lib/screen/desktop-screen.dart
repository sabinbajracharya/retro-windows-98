import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:retrowindows98/components/start-bar.dart';

final bgColor = const Color.fromRGBO(70, 155, 154, 1);

class DesktopScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DesktopScreenState();
  }
}

class _DesktopScreenState extends State<DesktopScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Stack(
      children: [
        Container(color: bgColor),
        Column(
          children: [
            DesktopIcon(
              path: "assets/images/ic-computer.png",
              title: "My Computer",
            ),
            DesktopIcon(
              path: "assets/images/ic-documents.png",
              title: "My Documents",
            ),
            DesktopIcon(
              path: "assets/images/ic-internet-explorer.png",
              title: "Internet Explorer",
            ),
            DesktopIcon(
              path: "assets/images/ic-recycle-bin-full.png",
              title: "Recycle Bin",
            ),
          ],
        ),
        Positioned(
          bottom: 0,
          child: StartBar(),
        )
      ],
    ));
  }
}

class DesktopIcon extends StatelessWidget {
  final String path;
  final String title;

  const DesktopIcon({Key key, this.path, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 12.0,
      ),
      child: Container(
        width: 80,
        child: Column(
          children: [
            Image.asset(path),
            Container(height: 4.0),
            Text(
              title,
              style: TextStyle(
                color: Colors.white70,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flame/flame.dart';

class WIN98LoaderScreen extends StatelessWidget {
  final Function showDesktop;

  WIN98LoaderScreen({@required this.showDesktop});

  @override
  Widget build(BuildContext context) {
    Flame.audio.play("windows-98-startup-sound.wav");
    Future.delayed(Duration(seconds: 6), () => showDesktop());

    return Container(
      color: Color(0xFF000000),
      child: FittedBox(
        fit: BoxFit.fill,
        child: Image.asset(
          "images/boot-loading.gif",
        ),
      ),
    );
  }
}
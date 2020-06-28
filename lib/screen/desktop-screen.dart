import 'package:flame/game/game.dart';
import 'package:flutter/material.dart';
import 'package:flame/game/base_game.dart';
import 'package:retrowindows98/components/bg.dart';

class DesktopScreen extends BaseGame with HasWidgetsOverlay {
  // final color = const Color.fromRGBO(17, 118, 98, 1);
  final color = const Color.fromRGBO(70, 155, 154, 1);

  DesktopScreen(Size size) {
    add(Bg(color: color));
  }
}
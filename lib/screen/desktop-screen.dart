import 'package:flame/game/game.dart';
import 'package:flutter/material.dart';
import 'package:flame/game/base_game.dart';
import 'package:retrowindows98/components/bg.dart';

class DesktopScreen extends BaseGame with HasWidgetsOverlay {
  DesktopScreen(Size size) {
    add(Bg(color: const Color.fromRGBO(17, 118, 98, 1)));
  }
}
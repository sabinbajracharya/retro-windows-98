import 'package:flame/components/component.dart';
import 'package:flame/components/composed_component.dart';
import 'package:flame/components/mixins/has_game_ref.dart';
import 'package:flame/components/mixins/tapable.dart';
import 'package:flame/components/text_component.dart';
import 'package:flame/text_config.dart';
import 'package:flutter/material.dart';
import 'package:retrowindows98/components/desktop-icon.dart';

class DesktopIconPanel extends PositionComponent with HasGameRef, Tapable, ComposedComponent {
  final TextConfig config = TextConfig(
    fontSize: 12.0,
    color: Colors.white.withOpacity(0.9),
    textAlign: TextAlign.center,
  );
  final xOffset = 16.0;
  final yOffset = 20.0;
  final iconSize = 48.0;
  final fontSize = 12.0;
  final spacing = 6.0;

  bool visible = true;

  DesktopIcon desktopIcon;
  TextComponent desktopTitle;

  DesktopIconPanel(String fileName, String title, int pos) : super() {
    desktopIcon = DesktopIcon(fileName: fileName)
      ..x = xOffset * 1.5
      ..y = (yOffset * (pos + 1)) +
          (pos * iconSize) +
          (pos * (fontSize + spacing));

    desktopTitle = TextComponent(title, config: config)
      ..x = xOffset
      ..y = (yOffset * (pos + 1)) +
          ((pos + 1) * iconSize) +
          ((pos + 1) * spacing) +
          (pos * fontSize);

    components..add(desktopIcon)..add(desktopTitle);
  }

  @override
  void render(Canvas canvas) {
    if (visible) {
      super.render(canvas);
    }
  }

  @override
  bool checkTapOverlap(Offset o) {
    // TODO: implement checkTapOverlap
  }

  @override
  void handleTapCancel(int pointerId) {
    // TODO: implement handleTapCancel
  }

  @override
  void handleTapDown(int pointerId, TapDownDetails details) {
    // TODO: implement handleTapDown
  }

  @override
  void handleTapUp(int pointerId, TapUpDetails details) {
    // TODO: implement handleTapUp
  }

  @override
  void onTapCancel() {
    // TODO: implement onTapCancel
  }

  @override
  void onTapDown(TapDownDetails details) {
    // TODO: implement onTapDown
  }

  @override
  void onTapUp(TapUpDetails details) {
    // TODO: implement onTapUp
  }
}

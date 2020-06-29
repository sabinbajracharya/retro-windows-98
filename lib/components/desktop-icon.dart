import 'package:flame/sprite.dart';
import 'package:flutter/material.dart';
import 'package:flame/components/component.dart';

class DesktopIcon extends SpriteComponent {
  final String fileName;
  DesktopIcon({@required this.fileName}) {
    this.sprite = Sprite(fileName);
    this.height = 48.0;
    this.width = 48.0;

    // setByPosition(Position.fromInts(100, 100));
  }
}

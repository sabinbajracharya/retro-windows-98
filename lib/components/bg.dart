import 'package:flutter/material.dart';
import 'package:flame/components/component.dart';
import 'package:flame/components/mixins/resizable.dart';

class Bg extends Component with Resizable {
  final Color color;
  Bg({@required this.color});

  @override
  void render(Canvas c) {
    Paint paint = Paint()..color = color;
    c.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), paint);
  }

  @override
  void update(double t) {}
}

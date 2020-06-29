import 'package:flame/components/component.dart';
import 'package:flame/components/composed_component.dart';
import 'package:flame/components/mixins/has_game_ref.dart';
import 'package:flame/components/mixins/resizable.dart';
import 'package:flame/components/mixins/tapable.dart';
import 'package:flame/components/text_component.dart';
import 'package:flame/position.dart';
import 'package:flame/sprite.dart';
import 'package:flame/text_config.dart';
import 'package:flutter/material.dart';
import 'package:retrowindows98/components/desktop-icon.dart';

class StartBarPanel extends Component
    with HasGameRef, Tapable, ComposedComponent {
  final TextConfig config = TextConfig(
    fontSize: 12.0,
    color: Colors.white.withOpacity(0.9),
    textAlign: TextAlign.center,
  );

  bool visible = true;
  final Size size;

  StartBarPanel({@required this.size}) : super() {
    // var esktopIcon = DesktopIcon(fileName: "start-button.png")
    // ..x = 0
    // ..y = 100;

    var bg = StartBarBg(color: Color.fromRGBO(179, 179, 179, 1), height: 36, size: size,)
      ..x = 0
      ..y = size.height - 36;

    // var startBar = SpriteComponent.fromSprite(45, 45, Sprite('ic-computer.png'))
    //   ..x = 100
    //   ..y = 100;

      // var startBar2 = StartBar()
      // ..x = 100
      // ..y = 100;


    components..add(bg);
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

  @override
  Rect toRect() {
    // TODO: implement toRect
    throw UnimplementedError();
  }
}

class StartBarBg extends PositionComponent {
  final Color color;
  final double height;
  final Size size;
  StartBarBg({
    @required this.color,
    @required this.height,
    @required this.size,
  });

  @override
  void render(Canvas c) {
    prepareCanvas(c);
    Paint paint = Paint()..color = color;
    c.drawRect(Rect.fromLTWH(0, 0, size.width, height), paint);
    c.drawRect(Rect.fromLTWH(0, 0, size.width, 1),  Paint()..color = Color.fromRGBO(244, 244, 244, 1));
    c.drawRect(Rect.fromLTWH(0, height - 1, size.width, 1),  Paint()..color = Color.fromRGBO(78, 78, 78, 1));
  }

  @override
  void update(double t) {}
}

class StartBar extends PositionComponent {
  @override
  void render(Canvas c) {
    var startBarSprite = Sprite("start-button.png");
    startBarSprite.render(c, width: 45, height: 14.0);

    // Paint paint = Paint()..color = color;
    // c.drawRect(Rect.fromLTWH(0, 0, size.width, height), paint);
    // c.drawRect(Rect.fromLTWH(0, 0, size.width, 1),  Paint()..color = Color.fromRGBO(244, 244, 244, 1));
    // c.drawRect(Rect.fromLTWH(0, height - 1, size.width, 1),  Paint()..color = Color.fromRGBO(78, 78, 78, 1));
  }
}

import 'package:flame/components/component.dart';
import 'package:flame/components/mixins/resizable.dart';
import 'package:flame/components/mixins/tapable.dart';
import 'package:flame/game/game.dart';
import 'package:flame/position.dart';
import 'package:flame/sprite.dart';
import 'package:flutter/material.dart';
import 'package:flame/game/base_game.dart';
import 'package:retrowindows98/components/bg.dart';
import 'package:retrowindows98/components/desktop-icon-panel.dart';
import 'package:retrowindows98/components/start-bar-panel.dart';

class DesktopScreenNew extends BaseGame
    with HasWidgetsOverlay, HasTapableComponents {
  // final color = const Color.fromRGBO(17, 118, 98, 1);
  final color = const Color.fromRGBO(70, 155, 154, 1);
  final xIconSpacing = 16;
  final yIconSpacing = 16;

  DesktopScreen(Size size) {
    add(Bg(color: color));
    add(DesktopIconPanel("ic-computer.png", "My Computer", 0));
    add(DesktopIconPanel("ic-documents.png", "My Documents", 1));
    add(DesktopIconPanel("ic-internet-explorer.png", "Internet Explorer", 2));
    add(DesktopIconPanel("ic-recycle-bin-full.png", "Recycle Bin", 3));
    add(StartMenuResizableWrapper());
    add(StartMenuButtonResizableWrapper());
    // add(StartBarBg(color: Colors.amber, height: 64));
    // addWidgetOverlay(
    //   "Start Menu",
    //   Container(
    //     height: 32, color: Color.fromRGBO(179, 179, 179, 1)),
    // );
  }
}

class StartMenuResizableWrapper extends Component with Resizable {

  @override
  void render(Canvas c) {
    var panel = StartBarPanel(size: size);
    panel.render(c);
  }

  @override
  void update(double dt) {

  }
}

class StartMenuButtonResizableWrapper extends SpriteComponent with Resizable {

  StartMenuButtonResizableWrapper() {
    this.sprite = Sprite("start-button.png");
    this.height = 14;
    this.width = 47;
    this.x = 4;
    this.y = size.height - 20;
  }

  @override
  void render(Canvas c) {
    super.render(c);
  }
}



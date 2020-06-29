import 'package:flutter/material.dart';
import 'package:flame/flame.dart';
import 'package:retrowindows98/screen/blue-death-screen.dart';

import 'package:retrowindows98/screen/boot-loader-screen.dart';
import 'package:retrowindows98/screen/desktop-screen-new.dart';
import 'package:retrowindows98/screen/desktop-screen.dart';
import 'package:retrowindows98/screen/win98-loader-screen.dart';

enum Screen {
  BOOT_LOADER_SCREEN,
  WIN98_LOADING_SCREEN,
  DESKTOP_SCREEN,
  BLUE_DEATH_SCREEN,
}

void main() async {
  final size = await Flame.util.initialDimensions();
  runApp(MyApp(size: size));
}

class MyApp extends StatelessWidget {
  final Size size;

  MyApp({this.size});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Main(size),
    );
  }
}

class Main extends StatefulWidget {
  final Size size;
  Main(Size size) : size = size;

  @override
  _MainState createState() {
    return _MainState();
  }
}

class _MainState extends State<Main> {
  var screen = Screen.DESKTOP_SCREEN;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    switch (screen) {
      case Screen.BOOT_LOADER_SCREEN:
        return BootLoaderScreen(
          bootWindows98: () {
            setState(() {
              screen = Screen.WIN98_LOADING_SCREEN;
            });
          },
          showScreenOfDeath: () {
            setState(() {
              screen = Screen.BLUE_DEATH_SCREEN;
            });
          },
        );

      case Screen.WIN98_LOADING_SCREEN:
        return WIN98LoaderScreen(showDesktop: () {
          setState(() {
            screen = Screen.DESKTOP_SCREEN;
          });
        });

      case Screen.DESKTOP_SCREEN:
        return DesktopScreen();//DesktopScreen(widget.size).widget;

      case Screen.BLUE_DEATH_SCREEN:
        return BlueDeathScreen(
          showBootLoader: () {
            setState(() {
              screen = Screen.BOOT_LOADER_SCREEN;
            });
          }
        );
    }
    return Container();
  }
}

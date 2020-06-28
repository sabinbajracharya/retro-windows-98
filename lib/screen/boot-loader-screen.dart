import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const timeout = const Duration(seconds: 10);
const ms = const Duration(milliseconds: 1);

class BootLoaderScreen extends StatefulWidget {
  final Function bootWindows98;
  final Function showScreenOfDeath;

  BootLoaderScreen({
    @required this.bootWindows98,
    @required this.showScreenOfDeath,
  });

  @override
  State<StatefulWidget> createState() {
    return _BootLoaderScreenState();
  }
}

class _BootLoaderScreenState extends State<BootLoaderScreen> {
  var seconds = 10;
  var selectedPosition = 0;

  var focusNode0 = FocusNode();
  var focusNode1 = FocusNode();

  @override
  void initState() {
    super.initState();
    focusNode0.requestFocus();
    startCountDown(seconds);
  }

  startCountDown(int seconds) async {
    for (int i = seconds; i >= 0; i--) {
      setState(() {
        this.seconds = i;
      });
      await Future.delayed(Duration(seconds: 1));
    }
    // widget.bootWindows98();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      textStyle: TextStyle(
          color: Colors.grey.shade400,
          fontFamily: 'lucida-console',
          fontWeight: FontWeight.bold,
          fontSize: 24.0),
      color: Colors.black,
      child: Padding(
        padding: EdgeInsets.all(52.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Microsoft Windows 98 Startup Menu"),
            Text("=================================="),
            Container(height: 52.0),
            Padding(
              padding: EdgeInsets.only(left: 52.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RawKeyboardListener(
                    autofocus: true,
                    focusNode: focusNode0,
                    onKey: (event) {
                      if (event.runtimeType == RawKeyUpEvent) {
                        print(event.data.keyLabel);
                        if (event.data.keyLabel == "ArrowDown") {
                          setState(() {
                            selectedPosition = 1;
                          });
                          focusNode1.requestFocus();
                        } else if (event.data.keyLabel == "Enter") {
                          widget.bootWindows98();
                        }
                      }
                    },
                    child: BootMenuText(
                      "1. Boot from Hard Disk.",
                      isSelected: selectedPosition == 0,
                    ),
                  ),
                  Container(height: 10.0),
                  RawKeyboardListener(
                    focusNode: focusNode1,
                    onKey: (event) {
                      if (event.runtimeType == RawKeyUpEvent) {
                        if (event.data.keyLabel == "ArrowUp") {
                          setState(() {
                            selectedPosition = 0;
                          });
                          focusNode0.requestFocus();
                        } else if (event.data.keyLabel == "Enter") {
                          widget.showScreenOfDeath();
                        }
                      }
                    },
                    child: BootMenuText(
                      "2. Start computer with CD-ROM support.",
                      isSelected: selectedPosition == 1,
                    ),
                  ),
                ],
              ),
            ),
            Container(height: 52.0),
            Row(
              children: [
                Text("Enter a choice: "),
                Text("1"),
                Container(width: 100),
                Text("Time Remaining: $seconds"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BootMenuText extends StatelessWidget {
  final bool isSelected;
  final String text;

  BootMenuText(
    this.text, {
    @required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    var highlightColor = isSelected ? Colors.grey.shade400 : null;
    var fontColor = isSelected ? Colors.white : Colors.grey.shade400;

    return Container(
      color: highlightColor,
      child: Padding(
        padding: EdgeInsets.only(
          left: 4.0,
          top: 8.0,
          bottom: 8.0,
          right: 4.0,
        ),
        child: Text(
          text,
          style: TextStyle(color: fontColor),
        ),
      ),
    );
  }
}

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class BlueDeathScreen extends StatelessWidget {
  final Function showBootLoader;
  final focusNode = FocusNode();

  BlueDeathScreen({@required this.showBootLoader}) {
    focusNode.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    return RawKeyboardListener(
      autofocus: true,
      focusNode: focusNode,
      onKey: (event) {
        if (event.runtimeType == RawKeyUpEvent) {
          showBootLoader();
        }
      },
      child: Container(
        color: Color.fromRGBO(6, 0, 193, 1),
      ),
    );
  }
}

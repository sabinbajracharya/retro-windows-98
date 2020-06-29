import 'package:flutter/material.dart';
import 'package:retrowindows98/components/browser/vertical-bar.dart';

class IEAddressBar extends StatefulWidget {
  final String faviconPath;
  final String url;
  final Function(String url) onUrlChange;

  const IEAddressBar({Key key, this.faviconPath, this.url, this.onUrlChange}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _IEAddressBarState();
  }
}

class _IEAddressBarState extends State<IEAddressBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        VerticalBar(height: 32.0, width: 4.0),
        Container(width: 4.0),
        Text("Address"),
        Container(
          width: 4.0,
        ),
        Flexible(
          child: Container(
            height: 32.0,
            padding: EdgeInsets.all(3.0),
            color: Colors.white,
            child: Row(
              children: [
                Image.asset(
                  widget.faviconPath,
                  height: 24,
                  width: 24,
                ),
                Container(
                  width: 16.0,
                ),
                Flexible(
                  child: TextField(
                    onSubmitted: (value) {
                      widget.onUrlChange(value);
                    },
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.only(bottom: -16.0, top: -16.0),
                      border: InputBorder.none,
                      hintText: widget.url,
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
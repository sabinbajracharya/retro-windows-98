import 'package:flutter/material.dart';
import 'package:retrowindows98/components/toolbar-button.dart';

class InternetExplorer extends StatefulWidget {
  final colorGrey = const Color.fromRGBO(179, 179, 179, 1);
  final Function close;

  const InternetExplorer({Key key, this.close}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _InternetExplorerState();
  }
}

class _InternetExplorerState extends State<InternetExplorer> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(4.0),
      height: size.height - 36.0,
      width: size.width,
      color: widget.colorGrey,
      child: Column(children: [
        IETitleBar(
          width: size.width,
          faviconPath: "assets/images/ic-ie-favicon.png",
          title: "about:blank - Microsoft Internet Explorer",
          close: widget.close,
        ),
        Container(
          height: 100.0,
        ),
        IEAddressBar(
          faviconPath: "assets/images/ic-ie-favicon.png",
        ),
        Container(height: 16.0),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(
              6.0,
            ),
            child: Container(
              width: size.width,
              height: 100.0,
              color: Colors.white,
            ),
          ),
        ),
      ]),
    );
  }
}

class IETitleBar extends StatelessWidget {
  final double width;
  final String faviconPath;
  final String title;
  final Function close;

  const IETitleBar(
      {Key key, this.faviconPath, this.width, this.title, this.close})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 26,
      width: width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color.fromRGBO(6, 0, 111, 1),
            Color.fromRGBO(11, 49, 155, 1),
            Color.fromRGBO(15, 81, 176, 1),
            Color.fromRGBO(17, 107, 195, 1),
          ],
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(2.0),
            child: Image.asset(faviconPath),
          ),
          Text(
            title,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          ),
          Spacer(flex: 1),
          ToolBarButton(
            "X",
            callback: () {
              close();
            },
          ),
        ],
      ),
    );
  }
}

class IEAddressBar extends StatefulWidget {
  final colorWhite = const Color.fromRGBO(255, 255, 255, 1);
  final colorBlack = const Color.fromRGBO(128, 128, 128, 1);
  final String faviconPath;

  const IEAddressBar({Key key, this.faviconPath}) : super(key: key);

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
        Container(
          height: 32.0,
          width: 4.0,
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                width: 1.0,
                color: widget.colorWhite,
              ),
              left: BorderSide(
                width: 1.0,
                color: widget.colorWhite,
              ),
              right: BorderSide(
                width: 1.0,
                color: widget.colorBlack,
              ),
              bottom: BorderSide(
                width: 1.0,
                color: widget.colorBlack,
              ),
            ),
          ),
        ),
        Container(width: 4.0),
        Text("Address"),
        Container(
          width: 4.0,
        ),
        Flexible(
          child: Container(
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
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'about:blank',
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

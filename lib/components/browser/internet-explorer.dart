import 'package:flutter/material.dart';
import 'package:retrowindows98/components/browser/bookmark-bar.dart';
import 'package:retrowindows98/components/browser/browser.dart';
import 'package:retrowindows98/components/browser/ie-address-bar.dart';
import 'package:retrowindows98/components/browser/ie-title-bar.dart';
import 'package:retrowindows98/components/browser/ie-toolbar.dart';

class InternetExplorer extends StatefulWidget {
  final colorGrey = const Color.fromRGBO(179, 179, 179, 1);
  final Function close;
  final defaultUrl = "https://sabinbir.com.np";

  const InternetExplorer({Key key, this.close}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _InternetExplorerState();
  }
}

class _InternetExplorerState extends State<InternetExplorer> {
  String newUrl;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var url = newUrl ?? widget.defaultUrl;

    return Container(
      padding: EdgeInsets.all(4.0),
      height: size.height - 36.0,
      width: size.width,
      color: widget.colorGrey,
      child: Column(children: [
        IETitleBar(
          width: size.width,
          faviconPath: "assets/images/ic-ie-favicon.png",
          title: "${widget.defaultUrl} - Microsoft Internet Explorer",
          close: widget.close,
        ),
        // Container(
        //   height: 100.0,
        // ),
        IEToolbar(),
        Container(height: 4.0,),
        IEAddressBar(
            faviconPath: "assets/images/ic-ie-favicon.png",
            url: url,
            onUrlChange: (String newUrl) {
              setState(() {
                this.newUrl = newUrl;
              });
            }),
        Container(height: 4.0),
        BookmarkBar(
          onBookmarkTap: (String url) {
            setState(() {
              this.newUrl = url;
            });
          },
        ),
        Container(height: 4.0),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(
              6.0,
            ),
            child: Browser(size: size, url: url),
          ),
        ),
      ]),
    );
  }
}

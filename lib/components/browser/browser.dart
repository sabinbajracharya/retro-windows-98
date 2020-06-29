import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'dart:html';

class Browser extends StatelessWidget {
  final Size size;
  final String url;

  const Browser({Key key, this.url, this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory( // ignore: undefined_prefixed_name
        '$url',
        (int viewId) => IFrameElement()
          // ..width = size.width.toString()
          // ..height = '360'
          ..src = () {
            if (!url.contains("https://") && !url.contains("http://")) {
              return "https://$url";
            } else {
              return url;
            }
          }()
          ..style.border = 'none');

    return Container(
      width: size.width,
      color: Colors.white,
      child: HtmlElementView(viewType: '$url'),
    );
  }
}

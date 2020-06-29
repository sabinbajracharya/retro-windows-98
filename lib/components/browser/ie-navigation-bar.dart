
import 'package:flutter/material.dart';
import 'package:retrowindows98/components/browser/vertical-bar.dart';

class IENavigationBar extends StatelessWidget {
  final itemSpacing = 8.0;
  final spacing = 4.0;
  final Function tapHome;

  const IENavigationBar({Key key, this.tapHome}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        VerticalBar(height: 52.0, width: 4.0),
        Container(width: itemSpacing,),
        InkWell(
          onTap: () => tapHome(),
          child: Column(
          children: [
            Image.asset("assets/images/ic-tree.png"),
            Container(width: spacing,),
            Text("Home"),
          ],
        ),
        )
      ],
    );
  }



}
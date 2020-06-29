
import 'package:flutter/material.dart';

class BookmarkBar extends StatelessWidget {

  final Function(String) onBookmarkTap;

  const BookmarkBar({Key key, this.onBookmarkTap}) : super(key: key);

  final bookmarks = const  [
    BookmarkItem("https://sabinbir.com.np", "assets/images/photo.jpg"),
    BookmarkItem("https://emberjs.com", "assets/images/ic-ember.png"),
    BookmarkItem("https://dart.dev", "assets/images/ic-dart.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 6.0),
      child: Row(
        children: [
          for(var bookmark in bookmarks )
            ...[
              InkWell(
                onTap: () {
                  onBookmarkTap(bookmark.link);
                },
                child: Image.asset(bookmark.imagePath, height: 22.0, width: 22.0,),
              ),
              Container(width: 12.0),
            ]
        ]
      ),
    );
  }

}

class BookmarkItem {
  final String link;
  final String imagePath;

  const BookmarkItem(this.link, this.imagePath);
}
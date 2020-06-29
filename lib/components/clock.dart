import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Clock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final clock = Stream<DateTime>.periodic(const Duration(seconds: 1), (_) {
      return DateTime.now();
    });
    return StreamBuilder<DateTime>(
      stream: clock,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Text(DateFormat.jms().format(DateTime.now()));
        }
        return Container();
      },
    );
  }
}
import 'package:flutter/material.dart';

class MessageTab extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Text(
        'message',
        textDirection: TextDirection.ltr,
        textScaleFactor: 1.1,
      ),
    );
  }
}

class BottomTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BottomTabState();
}

class BottomTabState extends State<BottomTab> {
  @override
  Widget build(BuildContext context) {
    return new MaterialButton(onPressed: null);
  }
}

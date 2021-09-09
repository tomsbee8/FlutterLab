import 'package:flutter/material.dart';
import 'package:flutter_app/page/splash.dart';

void main() => runApp(new MaterialApp(
    title: "FlutterSample",
    theme: new ThemeData(
      primaryIconTheme: const IconThemeData(color: Colors.white),
      brightness: Brightness.light,
      primaryColor: Color.fromARGB(255, 140, 204, 200),
      accentColor: Colors.cyan[300],
    ),
    home: new SplashPage()));

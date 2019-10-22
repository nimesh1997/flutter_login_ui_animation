import 'package:flutter/material.dart';
import 'package:flutter_login_ui_animation/screens/MyHomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login Page Animation',
      home: MyHomePage(),
    );
  }
}
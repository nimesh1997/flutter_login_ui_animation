import 'package:flutter/material.dart';
import 'package:flutter_login_ui_animation/simpleAnimation.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20.0),
        width: double.infinity,
        height: double.infinity,
        color: Colors.deepPurpleAccent,
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                simpleAnimation(
                    Text(
                      'Welcome',
                      textScaleFactor: 1.0,
                      style: TextStyle(fontSize: 36.0, color: Colors.white, fontWeight: FontWeight.w500),), 1.0),

                simpleAnimation(
                    Text(
                      'Flutter is the way to the design the app',
                      textScaleFactor: 1.0,
                      style: TextStyle(fontSize: 24.0, color: Colors.white, fontWeight: FontWeight.w300),), 2.0),
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}

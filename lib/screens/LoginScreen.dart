import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui_animation/simpleAnimation.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin{

  AnimationController _controller;
  Animation _animation;


  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 750));
//    _animation =
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(20.0),
          color: Color.fromRGBO(3, 9, 23, 1),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              simpleAnimation(
                Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 36.0, fontWeight: FontWeight.w700),
                ),
                0.8
              ),
              SizedBox(
                height: 20.0,
              ),
              simpleAnimation(Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                    border: Border.all(color: Colors.white.withOpacity(0.7))
                  ),
                  height: 150.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Email',
//                              labelText: 'Email Id',
                                border: OutlineInputBorder(borderSide: BorderSide.none),
//                              border: OutlineInputBorder(borderSide: BorderSide(color: Color.fromRGBO(3, 9, 23, 1)))
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
                        width: double.maxFinite,
                        height: 1.0,
                        color: Colors.grey.withOpacity(0.6),
                      ),
                      Container(
                        child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Password',
//                              labelText: 'Password',
                                border: OutlineInputBorder(borderSide: BorderSide.none),
//                              border: OutlineInputBorder(borderSide: BorderSide(color: Color.fromRGBO(3, 9, 23, 1)))
                            )
                        ),
                      ),
                    ],
                  ),
                ),
                1.4),
              SizedBox(
                height: 20.0,
              ),
              simpleAnimation(
                Center(
                  child: Container(
//                  width: 120.0,
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(40.0)), color: Colors.blue),
                    child: FlatButton(
                        highlightColor: Colors.transparent,
                        onPressed: () {},
                        child: Text(
                          'Login',
                          style: TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 16.0),
                        )),
                  ),
                ),
                1.4
              )
            ],
          )),
    );
  }
}

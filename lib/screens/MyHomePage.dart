import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_login_ui_animation/screens/LoginScreen.dart';
import 'package:flutter_login_ui_animation/simpleAnimation.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  AnimationController _controller1;
  AnimationController _controller2;
  AnimationController _controller3;
  AnimationController _controller4;
  Animation<double> _animation1;
  Animation<double> _animation2;
  Animation<double> _animation3;
  Animation<double> _animation4;

  bool hideIcon = false;

  @override
  void initState() {
    _controller1 = AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    _animation1 = Tween<double>(begin: 1.0, end: 0.80).animate(_controller1)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          /// if first animation completes start the second animation
          print('animation1 completed');
          _controller2.forward();
        }
      });

    _controller2 = AnimationController(vsync: this, duration: Duration(milliseconds: 750));
    _animation2 = Tween<double>(begin: 60.0, end: 260.0).animate(_controller2)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          print('_animation2 completed');
          _controller3.forward();
        }
      });

    _controller3 = AnimationController(vsync: this, duration: Duration(milliseconds: 1000));
    _animation3 = Tween<double>(begin: 0, end: 200).animate(_controller3)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          print('_animation3 completed');
          setState(() {
            hideIcon = true;
          });
          _controller4.forward();
        }
      });

    _controller4 = AnimationController(vsync: this, duration: Duration(milliseconds: 1000));
    _animation4 = Tween<double>(begin: 1.0, end: 32.0).animate(_controller4)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          print('_animation4 completed');
          print('now navigate to next page');
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginPage()));
//          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
        }
      });
  }

  @override
  void dispose() {
    print('dispose called...');
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    _controller4.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(3, 9, 23, 1),
      body: Container(
        width: double.infinity,
        height: double.maxFinite,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: -50,
              left: 0,
              child: simpleAnimation(
                  Container(
                    width: double.maxFinite,
                    height: 300.0,
                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/design.png'), fit: BoxFit.cover)),
                  ),
                  1),
            ),
            Positioned(
              top: -100,
              left: 0,
              child: simpleAnimation(
                  Container(
                    width: double.maxFinite,
                    height: 300.0,
                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/design.png'), fit: BoxFit.cover)),
                  ),
                  1.4),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 0.0, left: 20.0, right: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  simpleAnimation(
                      Text(
                        'Welcome',
                        textScaleFactor: 1.0,
                        style: TextStyle(fontSize: 36.0, color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                      1.6),
                  SizedBox(
                    height: 10.0,
                  ),
                  simpleAnimation(
                      Text(
                        'Flutter is the way to design the app beautiful',
                        textScaleFactor: 1.0,
                        style: TextStyle(fontSize: 18.0, color: Colors.white.withOpacity(0.8), fontWeight: FontWeight.w300),
                      ),
                      1.8),
                  SizedBox(
                    height: 100.0,
                  ),

                  ///Bottom Widget
                  simpleAnimation(
                      AnimatedBuilder(
                        animation: _controller1,
                        builder: (context, child) {
                          return Transform.scale(
                            scale: _animation1.value,
                            child: Center(
                              child: AnimatedBuilder(
                                animation: _controller2,
                                builder: (context, child) {
                                  return Container(
                                    width: _animation2.value,
                                    height: 60.0,
                                    padding: EdgeInsets.all(10.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40.0),
                                      color: Colors.blue.withOpacity(0.4),
                                    ),
                                    child: InkWell(
                                      hoverColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      splashColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () {
                                        print('_onTap: _controller1 called...');
                                        _controller1.forward();
                                      },
                                      child: Stack(
                                        children: <Widget>[
                                          AnimatedBuilder(
                                            animation: _controller3,
                                            builder: (context, child) {
                                              return Positioned(
                                                left: _animation3.value,
                                                child: AnimatedBuilder(
                                                  animation: _controller4,
                                                  builder: (context, child) {
                                                    return Transform.scale(
                                                      scale: _animation4.value,
                                                      child: Container(
                                                        width: 40.0,
                                                        height: 40.0,
                                                        decoration: BoxDecoration(
                                                          shape: BoxShape.circle,
                                                          color: Colors.blue,
                                                        ),
                                                        child: hideIcon ? Container() : Icon(
                                                          Icons.arrow_forward,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    );
                                                  },
//                                                  child: Container(
//                                                    width: 60.0,
//                                                    height: 60.0,
//                                                    decoration: BoxDecoration(
//                                                      shape: BoxShape.circle,
//                                                      color: Colors.blue,
//                                                    ),
//                                                    child: Icon(
//                                                      Icons.arrow_forward,
//                                                      color: Colors.white,
//                                                    ),
//                                                  ),
                                                ),
                                              );
                                            },
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          );
                        },
                      ),
                      1.6),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

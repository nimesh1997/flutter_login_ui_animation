// ignore: camel_case_types
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:simple_animations/simple_animations/multi_track_tween.dart';

// ignore: camel_case_types, must_be_immutable
class simpleAnimation extends StatelessWidget {
  simpleAnimation(this.child, this.duration);

  Widget child;

  double duration;

  @override
  Widget build(BuildContext context) {
    return buildAnimation();
  }

  Widget buildAnimation() {
    final tween = MultiTrackTween([
      Track("opacity").add(Duration(seconds: 1), Tween(begin: 0.0, end: 1.0)),
      Track("translateY").add(
          Duration(seconds: 1),
          Tween(
            begin: -100.0,
            end: 0.0,
          ), curve: Curves.decelerate),
//      Track("color")
//          .add(Duration(seconds: 2), ColorTween(begin: Colors.red, end: Colors.blue), curve: Curves.easeIn)
//          .add(Duration(seconds: 2), ColorTween(begin: Colors.blue, end: Colors.green), curve: Curves.easeOut),
    ]);

    /// Controled animation with creating the child
//    return ControlledAnimation(
//      delay: Duration(seconds: 2),
////      playback: Playback.MIRROR,
//      duration: tween.duration,
//      tween: tween,
//      builder: (context, animation) {
//        return Opacity(
//          opacity: animation["opacity"],
//          child: Transform.translate(
//            offset: Offset(0, animation["translateY"]),
//            child: Container(
//              width: animation["size"],
////            height: animation["size"],
////            color: animation["color"],
//            ),
//          ),
//        );
//      },
//    );

    /// controlled animation with the builderWithChild
    return ControlledAnimation(
        delay: Duration(seconds: duration.round()),
        tween: tween,
        duration: tween.duration,
        child: child,
        builderWithChild: (context, child, animation) => Opacity(
            opacity: animation["opacity"],
            child: Transform.translate(
              offset: Offset(0, animation["translateY"]),
              child: child,
            )));
  }
}

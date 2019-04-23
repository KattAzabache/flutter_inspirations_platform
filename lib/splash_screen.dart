import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  startTime() => Timer(Duration(seconds: 4), goToLogin);

  Animation<double> animation;
  AnimationController controller;

  void goToLogin() {
    Navigator.of(context).pushReplacementNamed('/Login');
  }

  @override
  void initState() {
    super.initState();
    controller = new AnimationController(
        vsync: this, duration: new Duration(milliseconds: 1000));
    Tween tween = new Tween<double>(begin: 0.0, end: 10.0);
    animation = tween.animate(controller);
    animation.addListener(() {
      setState(() {});
    });
    controller.forward();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return new Container(
      color: _theme.primaryColor,
      child: Center(
        child: ScaleTransition(
          scale: controller,
          child: Container(
              width: 130.0,
              child: Icon(
                FontAwesomeIcons.swatchbook,
                color: Colors.white,
              )),
        ),
      ),
    );
  }
}

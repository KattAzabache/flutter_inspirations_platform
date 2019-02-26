import 'package:flutter/material.dart';
import 'package:launcher/login.dart';
import 'package:launcher/splash_screen.dart';
import 'package:launcher/theme.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  AppState createState() {
    return new AppState();
  }
}

class AppState extends State<App> with TickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;

  initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: AppTheme.theme,
      home: new SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/Login': (BuildContext context) => FadeTransition(
              child: new Login(),
              opacity:
                  new CurvedAnimation(parent: animation, curve: Curves.easeIn),
            )
      },
    );
  }
}

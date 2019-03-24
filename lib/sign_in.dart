import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:launcher/home_screen.dart';

final double verticalSpace = 100.0;

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    final _theme = Theme.of(context);
    return Container(
      color: _theme.primaryColor,
      width: width,
      child: Container(
          padding: EdgeInsets.only(bottom: 16, left: 24, right: 24, top: 40),
          child: Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 30),
                child: ListView(
                  children: <Widget>[
                    ClipPath(
                       clipper: SlopeClipper(elevation: 100, radius: 30),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        constraints: BoxConstraints(minHeight: 200),
                        padding: EdgeInsets.all(24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'LOGIN',
                              style: _theme.textTheme.headline
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Center(
                              child: TextFormField(
                                decoration: InputDecoration(
                                    labelText: 'Email o Username'),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            TextFormField(
                              decoration: const InputDecoration(
                                  suffixIcon: const Padding(
                                    padding: const EdgeInsets.only(top: 15.0),
                                    child: const Icon(
                                      Icons.remove_red_eye,
                                    ),
                                  ),
                                  labelText: 'Password',
                                  labelStyle: TextStyle(color: Colors.grey),
                                  counterText: 'Forgot Password?'),
                              obscureText: true,
                            ),
                            SizedBox(
                              height: 80,
                            ),
                            Stack(
                              children: <Widget>[
                                Align(
                                  alignment: Alignment.bottomRight,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        gradient: LinearGradient(colors: [
                                          _theme.primaryColorDark,
                                          _theme.primaryColor
                                        ]),
                                      ),
                                      padding: EdgeInsets.all(8),
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    HomeScreen()),
                                          );
                                        },
                                        child: Icon(
                                          Icons.arrow_forward,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Stack(
                      overflow: Overflow.visible,
                      children: <Widget>[
                        Positioned(
                          top: -verticalSpace,
                          child: ClipOval(
                            child: Container(
                              color: Colors.white,
                              padding: EdgeInsets.all(8),
                              child: InkWell(
                                child: Icon(
                                  FontAwesomeIcons.facebookF,
                                  color: _theme.primaryColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: -verticalSpace + 20,
                          left: 60,
                          child: ClipOval(
                            child: Container(
                              color: Colors.white,
                              padding: EdgeInsets.all(8),
                              child: InkWell(
                                child: Icon(
                                  FontAwesomeIcons.linkedinIn,
                                  color: _theme.primaryColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: -verticalSpace + 40,
                          left: 120,
                          child: ClipOval(
                            child: Container(
                              color: Colors.white,
                              padding: EdgeInsets.all(8),
                              child: InkWell(
                                child: Icon(
                                  FontAwesomeIcons.twitter,
                                  color: _theme.primaryColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox()
                      ],
                    ),
                    // SizedBox(
                    //   height: 50,
                    // ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Already have on account? ',
                      style: _theme.textTheme.subhead
                          .copyWith(color: Colors.white),
                    ),
                    InkWell(
                      child: Text(
                        'Signup',
                        style: _theme.textTheme.subhead.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}

class SlopeClipper extends CustomClipper<Path> {
  int n;
  double elevation;
  double radius;

  SlopeClipper({this.n: 20,this.elevation,this.radius});

  @override
  getClip(Size size) {
    final points = List<Offset>(4*n+4);

    // First arc
    for(int i = 0; i < n+1; i++){
      final theta = i * pi/2 / n;
      final dx = size.width - radius + radius * sin(theta);
      final dy = radius - radius * cos(theta);
      points[i] = Offset(dx, dy);
    }

    // Elevation angle
    final phi = atan(elevation/size.width);

    // Second arc
    var angle = (pi/2 - phi) / 2;
    var x_center = size.width - radius;
    var y_center = size.height - radius / tan(angle);
    for(int i = 0; i < n+1; i++){
      final theta = i * (pi/2 + phi) / n;
      final dx = x_center + radius * cos(theta);
      final dy = y_center + radius * sin(theta);
      points[i + n + 1] = Offset(dx, dy);
    }
    
    // Third arc
    x_center = radius;
    y_center = size.height - elevation - radius * tan(angle);
    for(int i = 0; i < n+1; i++){
      final theta = phi + i * (pi/2 - phi) / n;
      final dx = x_center - radius * sin(theta);
      final dy = y_center + radius * cos(theta);
      points[i + 2*n + 2] = Offset(dx, dy);
    }

    // Fourth arc
    x_center = radius;
    y_center = radius;
    for(int i = 0; i < n+1; i++){
      final theta = i * pi/2 / n;
      final dx = x_center - radius * cos(theta);
      final dy = y_center - radius * sin(theta);
      points[i + 3*n + 3] = Offset(dx, dy);
    }

    return Path()..addPolygon(points, true);
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => false;
}

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
                      // borderRadius: BorderRadius.only(
                      //   bottomLeft: Radius.circular(100),
                      //   bottomRight: Radius.circular(20),
                      //   topLeft: Radius.circular(20),
                      //   topRight: Radius.circular(20),
                      // ),
                      clipper: BottomWaveClipper(),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
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
                                        color: Colors.black,
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

class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..lineTo(0.0, size.height)
      ..lineTo(0.0, size.height - verticalSpace)
      // ..quadraticBezierTo(size.width, 100,size.width, -100)
      // ..quadraticBezierTo(0, 0, 0, size.height - verticalSpace)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0.0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

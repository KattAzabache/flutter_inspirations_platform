import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:launcher/tabs/home/new_product.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class TabProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    final GlobalKey _menuKey = new GlobalKey();
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Container(),
        actions: <Widget>[
          new PopupMenuButton(
              icon: Icon(
                FontAwesomeIcons.ellipsisV,
                color: _theme.disabledColor,
              ),
              key: _menuKey,
              itemBuilder: (_) => <PopupMenuItem<String>>[
                    new PopupMenuItem<String>(
                        child: const Text('Settings'), value: 'Settings'),
                    new PopupMenuItem<String>(
                        child: const Text('Sign out'), value: 'Sign out'),
                  ],
              onSelected: (_) {}),
        ],
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 16.0,
          ),
          Stack(
            overflow: Overflow.clip,
            children: <Widget>[
              Positioned(
                top: 0,
                left: -150,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                      color: _theme.primaryColor.withOpacity(0.15),
                      shape: BoxShape.circle),
                  height: 150,
                  width: 150,
                ),
              ),
              Center(
                child: Container(
                  height: 300,
                  width: 200,
                  decoration: BoxDecoration(
                      color: _theme.primaryColor,
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                          image:
                              NetworkImage('https://picsum.photos/g/200/300'))),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 130,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                        colors: [_theme.primaryColorDark, _theme.primaryColor]),
                  ),
                  padding: EdgeInsets.all(16),
                  child: InkWell(
                    onTap: () {},
                    child: Icon(
                      FontAwesomeIcons.plus,
                      size: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16.0,
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Name',
              maxLines: 2,
              style: _theme.textTheme.display1.copyWith(
                  fontWeight: FontWeight.bold, color: _theme.primaryColorDark),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              'Designer',
              maxLines: 2,
              style: _theme.textTheme.subhead
                  .copyWith(color: _theme.disabledColor),
            ),
          ),
          SizedBox(
            height: 24.0,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: <Widget>[
                      Text(
                        '150',
                        style: _theme.textTheme.title
                            .copyWith(fontWeight: FontWeight.w300),
                      ),
                      Text(
                        'Post',
                        style: TextStyle(color: _theme.disabledColor),
                      )
                    ],
                  ),
                ),
                Container(
                  color: _theme.primaryColor,
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  height: 30,
                  width: 1.5,
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: <Widget>[
                      Text(
                        '150',
                        style: _theme.textTheme.title
                            .copyWith(fontWeight: FontWeight.w300),
                      ),
                      Text(
                        'Followers',
                        style: TextStyle(color: _theme.disabledColor),
                      )
                    ],
                  ),
                ),
                Container(
                  color: _theme.primaryColor,
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  height: 30,
                  width: 1.5,
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: <Widget>[
                      Text(
                        '150',
                        style: _theme.textTheme.title
                            .copyWith(fontWeight: FontWeight.w300),
                      ),
                      Text(
                        'Following',
                        style: TextStyle(color: _theme.disabledColor),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 24.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: width - 100,
                height: 120,
                alignment: Alignment.topLeft,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                        bottomLeft: Radius.circular(25)),
                    boxShadow: [
                      BoxShadow(
                          color:
                              Theme.of(context).primaryColor.withOpacity(0.7),
                          offset: Offset(-7, 7))
                    ]),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CircularPercentIndicator(
                        radius: 75,
                        lineWidth: 3,
                        percent: 0.69,
                        progressColor: Theme.of(context).primaryColorDark,
                        backgroundColor: Color(0xffe5e5e5),
                        center: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              '10',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              ' %',
                              textAlign: TextAlign.end,
                              style: Theme.of(context).textTheme.caption,
                            )
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'UI UX \nRedesign',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '86  / 100 post',
                            style: TextStyle(fontSize: 11),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              RotatedBox(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10))),
                  margin: EdgeInsets.only(left: 40),
                  alignment: Alignment.center,
                  width: 80,
                  height: 40,
                  child: Text(
                    'Challenges',
                    style: Theme.of(context)
                        .textTheme
                        .caption
                        .copyWith(color: Colors.white),
                  ),
                ),
                quarterTurns: 1,
              )
            ],
          ),
          SizedBox(
            height: 24.0,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              child: Text(
                'Post',
                maxLines: 2,
                style: _theme.textTheme.headline
                    .copyWith(fontWeight: FontWeight.w500),
              ),
            ),
             NewProduct(),
             SizedBox(
            height: 24.0,
          ),
        ],
      ),
    );
  }
}

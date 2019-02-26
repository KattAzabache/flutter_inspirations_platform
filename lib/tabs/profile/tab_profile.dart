import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                    shape: BoxShape.circle
                  ),
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
          )
        ],
      ),
    );
  }
}

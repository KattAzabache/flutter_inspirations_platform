import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TabMessage extends StatelessWidget {
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
                        child: const Text('New group'), value: 'New group'),
                    new PopupMenuItem<String>(
                        child: const Text('Favorite'), value: 'Favorite'),
                    new PopupMenuItem<String>(
                        child: const Text('Settings'), value: 'Settings'),
                  ],
              onSelected: (_) {}),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   key: Key('message'),
      //   backgroundColor: _theme.primaryColorDark,
      //   onPressed: () {},
      //   child: Icon(
      //     Icons.add,
      //   ),
      //   shape: CircleBorder()
      // ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 16.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Message',
              maxLines: 2,
              style: _theme.textTheme.display1
                  .copyWith(fontWeight: FontWeight.bold, color:  _theme.primaryColorDark),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Premium',
              maxLines: 2,
              style: _theme.textTheme.headline
            ),
          ),
        ],
      ),
    );
  }
}

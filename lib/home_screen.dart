import 'package:flutter/material.dart';
import 'package:launcher/tabs/favorite/tab_favorite.dart';
import 'package:launcher/tabs/home/tab_home.dart';
import 'package:launcher/tabs/message/tab_message.dart';
import 'package:launcher/tabs/profile/tab_profile.dart';
import 'package:launcher/utils/bottom_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget child = Center(
      child: Text('page $pageIndex'),
    );

    if (pageIndex == 0) {
      child = TabHome();
    }
    if (pageIndex == 1) {
      child = TabFavorite();
    }
    if (pageIndex == 2) {
      child = TabMessage();
    }
    if (pageIndex == 3) {
      child = TabProfile();
    }
    return Scaffold(
      body: Container(
        child: child,
      ),
      bottomNavigationBar: BottomNavBar(
        selectedIndex: pageIndex,
        onTap: (int index) {
          setState(() {
            pageIndex = index;
          });
        },
      ),
    );
  }
}

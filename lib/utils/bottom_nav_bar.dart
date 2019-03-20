import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  final int selectedIndex;
  final Function(int index) onTap;

  const BottomNavBar({Key key, this.selectedIndex, this.onTap}) : super(key: key);
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List<NavigationItem> items = [
    NavigationItem(Icon(Icons.directions_car), Text('Home')),
    NavigationItem(Icon(Icons.star), Text('Favorite')),
    NavigationItem(Icon(Icons.chat), Text('Chat')),
    NavigationItem(Icon(Icons.person), Text('Profile')),
  ];
  Widget _buildItem(NavigationItem item, bool isSelected) {
    final _theme = Theme.of(context);
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      width: isSelected ? 120 : 60,
      height: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: isSelected
          ? BoxDecoration(
              color: _theme.primaryColor.withOpacity(0.2),
              borderRadius: BorderRadius.circular(50))
          : BoxDecoration(
              color: Colors.transparent,),
      child: Center(
        child: ListView(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                IconTheme(
                  data: IconThemeData(
                      size: 24,
                      color:
                          isSelected ? _theme.primaryColorDark : Colors.black),
                  child: item.icon,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: isSelected
                      ? DefaultTextStyle(
                          style: TextStyle(
                            color: _theme.primaryColorDark,
                            fontWeight: FontWeight.bold,
                          ),
                          child: item.title,
                        )
                      : Container(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    final _theme = Theme.of(context);
    return Container(
      width: width,
      color: Colors.white,
      padding: EdgeInsets.all(8),
      height: 56,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: items.map((item) {
          var itemIndex = items.indexOf(item);
          return GestureDetector(
            onTap: ()=> widget.onTap(itemIndex),
            child: _buildItem(item, widget.selectedIndex == itemIndex),
          );
        }).toList(),
      ),
    );
  }
}

class NavigationItem {
  final Icon icon;
  final Text title;

  NavigationItem(this.icon, this.title);
}

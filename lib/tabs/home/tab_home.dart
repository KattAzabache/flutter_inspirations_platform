import 'package:flutter/material.dart';
import 'package:launcher/tabs/home/list_horizontal.dart';

class TabHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    double width = MediaQuery.of(context).size.width;
    return Container(
        // color: _theme.primaryColor,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: -50,
              right: -width / 2.5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(300),
                child: Container(
                  height: width,
                  width: width,
                  color: _theme.primaryColor.withOpacity(0.15),
                ),
              ),
            ),
            ListView(
              children: <Widget>[
                SizedBox(
                  height: 24.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Loren Ipsum',
                    maxLines: 2,
                    style: _theme.textTheme.display2.copyWith(
                        fontWeight: FontWeight.bold, color: _theme.primaryColorDark),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Premium',
                    maxLines: 2,
                    style: _theme.textTheme.headline
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 24.0,
                ),
                ListHorizontal(),
              ],
            ),
          ],
        ));
  }
}

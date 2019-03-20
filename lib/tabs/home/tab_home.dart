import 'package:flutter/material.dart';
import 'package:launcher/tabs/home/list_horizontal.dart';
import 'package:launcher/tabs/home/new_product.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

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
                'Home',
                maxLines: 2,
                style: _theme.textTheme.display2.copyWith(
                    fontWeight: FontWeight.bold,
                    color: _theme.primaryColorDark),
              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                'Trending',
                maxLines: 2,
                style: _theme.textTheme.headline
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
           
            Container(
              padding: EdgeInsets.all(16),
              child: Wrap(
                spacing: 8.0, // gap between adjacent chips
                runSpacing: 4.0, // gap between lines
                children: <Widget>[
                  Chip(
                    backgroundColor:
                        Theme.of(context).primaryColorDark.withOpacity(0.1),
                    label: Text(
                      '#Hamilton',
                      style: TextStyle(
                        color: _theme.primaryColorDark,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Chip(
                    backgroundColor:
                        Theme.of(context).primaryColorDark.withOpacity(0.1),
                    label: Text(
                      '#Lafayette',
                      style: TextStyle(
                        color: _theme.primaryColorDark,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Chip(
                    backgroundColor:
                        Theme.of(context).primaryColorDark.withOpacity(0.1),
                    label: Text(
                      '#Mulligan',
                      style: TextStyle(
                        color: _theme.primaryColorDark,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
            ListHorizontal(),
            
            SizedBox(
              height: 8.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                'Recomended product',
                maxLines: 2,
                style: _theme.textTheme.headline
                    .copyWith(fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
             Container(
              width: width,
              margin: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                    BoxShadow(
                      color: Colors.grey[500].withOpacity(0.4),
                      blurRadius: 2.0,
                      spreadRadius: 0.0,
                      offset: Offset(
                        -2.0,
                        3.0,
                      ),
                    )
                  ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 100,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                              image: NetworkImage('https://picsum.photos/400'),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          'UI UX \nRedesign',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w100),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(colors: [
                        _theme.primaryColorDark,
                        _theme.primaryColor
                      ]),
                    ),
                    padding: EdgeInsets.all(8),
                    child: InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: width,
              margin: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                    BoxShadow(
                      color: Colors.grey[500].withOpacity(0.4),
                      blurRadius: 2.0,
                      spreadRadius: 0.0,
                      offset: Offset(
                        -2.0,
                        3.0,
                      ),
                    )
                  ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 100,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                              image: NetworkImage('https://picsum.photos/400'),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          'UI UX \nRedesign',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w100),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(colors: [
                        _theme.primaryColorDark,
                        _theme.primaryColor
                      ]),
                    ),
                    padding: EdgeInsets.all(8),
                    child: InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
           
             SizedBox(
              height: 8.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                'Post',
                maxLines: 2,
                style: _theme.textTheme.headline
                    .copyWith(fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            NewProduct(),
          ],
        ),
      ],
    ));
  }
}

import 'package:flutter/material.dart';

class ListHorizontal extends StatelessWidget {
  final List<Widget> cards = new List.generate(3, (i) => new CardProyects());
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 450,
      constraints: BoxConstraints(minHeight: 200),
      padding: const EdgeInsets.all(8.0),
      child: new ListView(
        scrollDirection: Axis.horizontal,
        children: cards,
      ),
    );
  }
}

class CardProyects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    final _theme = Theme.of(context);
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
      elevation: 2,
      child: Container(
        width: width - 50,
        child: Stack(
          overflow: Overflow.clip,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(18)),
                    color: _theme.primaryColor,
                    image: DecorationImage(
                        image: NetworkImage('https://picsum.photos/200'),
                        fit: BoxFit.cover),
                  ),
                ),
                SizedBox(
                  height: 24.0,
                ),
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal:8.0),
                   child: Text(
                      'Nombre del proyecto',
                      style: _theme.textTheme.title,
                    ),
                 ),
                SizedBox(
                  height: 8.0,
                ),
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal:8.0),
                   child: Text(
                      'Detalle del proyecto...',
                      style: _theme.textTheme.body1,
                    ),
                 ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(18)),
                  color: Colors.black,
                ),
                width: double.infinity,
                height: 56,
                child: Center(
                  child: Text(
                    'Details',
                    style: _theme.textTheme.body2.copyWith(color: Colors.white),
                  ),
                ),
              ),
            ),
            // Positioned(
            //     right: 10,
            //     top: 175,
            //     child: FloatingActionButton(
            //       key: Key('save'),
            //       onPressed: () {},
            //       backgroundColor: _theme.primaryColor,
            //       mini: true,
            //       child: Icon(Icons.bookmark_border),
            //     ))
          ],
        ),
      ),
    );
  }
}

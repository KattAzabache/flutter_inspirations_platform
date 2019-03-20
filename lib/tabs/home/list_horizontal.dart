import 'package:flutter/material.dart';

class ListHorizontal extends StatelessWidget {
  final List<Widget> cards = new List.generate(5, (i) => new CardProyects());
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 400,
      constraints: BoxConstraints(minHeight: 200),
      padding: const EdgeInsets.all(8.0),
      margin: EdgeInsets.only(bottom: 8),
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
      margin: EdgeInsets.only(right: 16,bottom: 8),
      child: Container(
        width: width - 50,
        child: Stack(
          overflow: Overflow.clip,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 190,
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(18)),
                    color: _theme.primaryColor,
                    image: DecorationImage(
                        image: NetworkImage('https://picsum.photos/600'),
                        fit: BoxFit.cover),
                  ),
                ),
                SizedBox(
                  height: 24.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'Nombre del proyecto',
                    style: _theme.textTheme.title
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'Detalle del proyecto...',
                    style: _theme.textTheme.body1
                        .copyWith(fontWeight: FontWeight.w200),
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
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[500].withOpacity(0.2),
                      blurRadius: 5.0,
                      spreadRadius: 1.0,
                      offset: Offset(
                        1.0,
                        1.0,
                      ),
                    )
                  ],
                ),
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.all(8),
                child: InkWell(
                  onTap: () {
                    print("add favorite :)");
                  },
                  child: Icon(
                    Icons.favorite,
                    color: Theme.of(context).primaryColor,
                    size: 24,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TabFavorite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    final GlobalKey _menuKey = new GlobalKey();
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Favorite',
            maxLines: 2,
            style: _theme.textTheme.display1.copyWith(
                fontWeight: FontWeight.bold, color: _theme.primaryColorDark),
          ),
        ),
        automaticallyImplyLeading: false,
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
                        child: const Text('Settings'), value: 'Settings'),
                  ],
              onSelected: (_) {}),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   key: Key('favorite'),
      //   backgroundColor: _theme.primaryColorDark,
      //   onPressed: () {},
      //   child: Icon(
      //     Icons.add,
      //   ),
      //   shape: CircleBorder()
      // ),
      body: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.all(16.0),
          childAspectRatio: 8.0 / 9.0,
          children: _buildGridCards(10, context) // Replace
          ),
    );
  }
}

List<Card> _buildGridCards(int count, BuildContext context) {
  List<Card> cards = List.generate(
    count,
    (int index) => Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 19.0 / 11.0,
                  child: Image.network(
                    'https://picsum.photos/300/300',
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Title',
                        style: Theme.of(context)
                            .textTheme
                            .body2
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Secondary Text',
                        style: Theme.of(context)
                            .textTheme
                            .caption
                            .copyWith(fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
              ],
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
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.all(8),
                child: InkWell(
                  onTap: () {
                    print("add favorite :)");
                  },
                  child: Icon(
                    Icons.favorite,
                    color: Theme.of(context).primaryColor,
                    size: 20,
                  ),
                ),
              ),
            ),
          ],
        )),
  );

  return cards;
}

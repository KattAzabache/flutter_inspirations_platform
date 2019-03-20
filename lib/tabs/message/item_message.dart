import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ItemMessage extends StatelessWidget {
  final List<String> items;

  ItemMessage({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Slidable(
        delegate: new SlidableDrawerDelegate(),
        actionExtentRatio: 0.25,
        child: new Container(
          // color: Colors.white,
          child: Stack(
            children: <Widget>[
              new ListTile(
                leading: new CircleAvatar(
                  backgroundColor: Colors.black,
                  backgroundImage: NetworkImage(
                    'https://picsum.photos/200/300/?gravity=east',
                  ),
                  foregroundColor: Colors.white,
                ),
                title: new Text('Tile n°',style: TextStyle(fontWeight: FontWeight.w500),),
                subtitle: new Text('SlidableDrawerDelegate'),
                trailing: Text(
                  '12 min',
                  style: Theme.of(context).textTheme.caption,
                ),
              ),
              Positioned(
                left: 40,
                bottom: 5,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2),
                      shape: BoxShape.circle,
                      color: Theme.of(context).primaryColorDark),
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      '1',
                      style: Theme.of(context).textTheme.caption.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          new IconSlideAction(
            caption: 'Archive',
            color: Theme.of(context).primaryColorDark,
            icon: Icons.archive, foregroundColor: Colors.white,
            // onTap: () => _showSnackBar('Archive'),
          ),
          new IconSlideAction(
            caption: 'Share',
            color: Colors.blue[900],
            icon: Icons.share,
            // onTap: () => _showSnackBar('Share'),
          ),
        ],
        secondaryActions: <Widget>[
          new IconSlideAction(
            caption: 'More',
            color: Colors.black87,
            icon: Icons.more_horiz,
            // onTap: () => _showSnackBar('More'),
          ),
          new IconSlideAction(
            caption: 'Delete',
            color: Colors.red,
            icon: Icons.delete,
            // onTap: () => _showSnackBar('Delete'),
          ),
        ],
      ),
    );
  }
}

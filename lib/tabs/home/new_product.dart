import 'package:flutter/material.dart';

class NewProduct extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
     double width = MediaQuery.of(context).size.width;
    final _theme = Theme.of(context);
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
      elevation: 2,
      margin: EdgeInsets.all(16),
      child: Container(
        width: width - 50,
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(18),bottom: Radius.circular(18)),
                    color: _theme.primaryColor,
                    image: DecorationImage(
                        image: NetworkImage('https://picsum.photos/500'),
                        fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
             Padding(
                  padding: const EdgeInsets.all( 16.0),
                  child: Text(
                    'Nombre del proyecto',
                    style: _theme.textTheme.title
                        .copyWith(fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                ),
                Positioned(
                  bottom: 8,
                  left: 16,
                  child: Container(
                    child:   Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                      borderRadius: BorderRadius.circular(16)
                      ),
                  padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 4),
                  child: Text(
                    'NEW',
                    style: _theme.textTheme.caption
                        .copyWith(fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                ),
                  ),
                )
            // Align(
            //   alignment: Alignment.bottomLeft,
            //   child: Container(
            //     decoration: BoxDecoration(
            //       borderRadius:
            //           BorderRadius.vertical(bottom: Radius.circular(18)),
            //       color: Colors.black,
            //     ),
            //     width: double.infinity,
            //     height: 56,
            //     child: Center(
            //       child: Text(
            //         'Details',
            //         style: _theme.textTheme.body2.copyWith(color: Colors.white),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
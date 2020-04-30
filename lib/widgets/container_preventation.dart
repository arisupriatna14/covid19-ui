import 'package:flutter/material.dart';

class Preventation extends StatelessWidget {
  final String image;
  final String title;

  const Preventation({
    Key key,
    @required this.image,
    @required this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      child: Column(
        children: <Widget>[
          Image.asset(image, width: 90.0),
          SizedBox(height: 16.0),
          Text(title, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}

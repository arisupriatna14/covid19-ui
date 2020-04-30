import 'package:flutter/material.dart';

class CustomBoxContainer extends StatelessWidget {
  final String title;
  final String image;
  final Color color;

  const CustomBoxContainer({
    Key key,
    @required this.title,
    @required this.image,
    @required this.color
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width - 48) / 2,
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8.0)
      ),
      child: Row(
        children: <Widget>[
          Image.asset(image, width: 24,),
          SizedBox(width: 16.0,),
          Text(title, style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500
          ),)
        ],
      ),
    );
  }
}

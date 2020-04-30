import 'package:demo_apps_covid19/themes/image_string.dart';
import 'package:flutter/material.dart';

class BoxCountry extends StatelessWidget {
  const BoxCountry({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Color(0XFFEBF1FF),
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Row(
        children: <Widget>[
          Image.asset(ImageString.icFlag, width: 20),
          SizedBox(width: 8.0),
          Text("USA", style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(width: 8.0),
          Image.asset(ImageString.icDropdown, width: 15),
        ],
      ),
    );
  }
}
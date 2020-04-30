import 'package:demo_apps_covid19/themes/image_string.dart';
import 'package:demo_apps_covid19/themes/strings.dart';
import 'package:demo_apps_covid19/themes/styles.dart';
import 'package:demo_apps_covid19/widgets/box_country.dart';
import 'package:demo_apps_covid19/widgets/container_preventation.dart';
import 'package:demo_apps_covid19/widgets/custom_box_container.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Image.asset(ImageString.icMenu, width: 25.0),
                    Image.asset(ImageString.icBell, width: 25.0)
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(Strings.covid19, style: headingTextStyle),
                    BoxCountry()
                  ],
                ),
                SizedBox(height: 30.0),
                Image.asset(ImageString.banner),
                SizedBox(height: 30.0),
                Text(Strings.areYouFeelingSick, style: headingTextStyle),
                SizedBox(height: 16.0),
                Text(Strings.areYouFeelingSickDesc, style: descTextStyle),
                SizedBox(height: 24.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    CustomBoxContainer(
                      title: Strings.callNow,
                      image: ImageString.icPhone,
                      color: Color(0XFFFF4D58)
                    ),
                    CustomBoxContainer(
                      title: Strings.sendSMS,
                      image: ImageString.icMessage,
                      color: Color(0XFF4D79FF)
                    )
                  ],
                ),
                SizedBox(height: 30),
                Text(Strings.prevention, style: headingTextStyle),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Preventation(image: ImageString.closeContact, title: Strings.avoidCloseContact),
                    Preventation(image: ImageString.cleanHands, title: Strings.cleanYourHands),
                    Preventation(image: ImageString.faceMask, title: Strings.wearAFacemask)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
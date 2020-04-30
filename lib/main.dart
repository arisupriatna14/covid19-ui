import 'package:demo_apps_covid19/screens/home/home_screen.dart';
import 'package:demo_apps_covid19/themes/image_string.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainApp()
    );
  }
}

class MainApp extends StatefulWidget {
  MainApp({Key key}) : super(key: key);

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  List<Widget> _widgetScreen = [
    HomeScreen(),
    Center(child: Text("Stats")),
    Center(child: Text("News")),
    Center(child: Text("Info"))
  ];

  int _currentIndex = 0;

  void _onChangeIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetScreen.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onChangeIndex,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            activeIcon: Image.asset(ImageString.icHome, width: 25.0, color: Colors.blueGrey),
            icon: Image.asset(ImageString.icHome, width: 25.0, color: Colors.grey),
            title: Text("Home")
          ),
          BottomNavigationBarItem(
            activeIcon: Image.asset(ImageString.icStats, width: 25.0, color: Colors.blueGrey),
            icon: Image.asset(ImageString.icStats, width: 25.0, color: Colors.grey),
            title: Text("Stats")
          ),
          BottomNavigationBarItem(
            activeIcon: Image.asset(ImageString.icNewspaper, width: 25.0, color: Colors.blueGrey),
            icon: Image.asset(ImageString.icNewspaper, width: 25.0, color: Colors.grey),
            title: Text("News")
          ),
          BottomNavigationBarItem(
            activeIcon: Image.asset(ImageString.icInfo, width: 25.0, color: Colors.blueGrey),
            icon: Image.asset(ImageString.icInfo, width: 25.0, color: Colors.grey),
            title: Text("Info")
          )
        ]
      ),
    );
  }
}
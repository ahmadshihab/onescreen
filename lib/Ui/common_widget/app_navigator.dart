import 'package:flutter/material.dart';
import 'package:rjs/Ui/Emissions/emissions_page.dart';
import 'package:rjs/Ui/favorite/page/favorite_page.dart';
import 'package:rjs/Ui/filtered/filtered_page.dart';
import 'package:rjs/Ui/palyer/song_page.dart';
import 'package:rjs/Ui/palyer/video_page.dart';
import 'package:rjs/core/style/base_colors.dart';

class BottomNavigator extends StatefulWidget {
  @override
  _BottomNavigatorState createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    VideoPage(),
    SongPage(),
    FilteredPage(),
    EmissionPage(),
    FavoritePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (int index) {
        setState(() => _selectedIndex = index);
        print(index);
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => _widgetOptions[index]));
      },
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Image.asset('assets/images/home.png'),
            backgroundColor: BlueColor,
            title: Text('')),
        BottomNavigationBarItem(
            icon: Image.asset('assets/images/radioicon.png'),
            backgroundColor: BlueColor,
            title: Text('')),
        BottomNavigationBarItem(
            icon: Image.asset('assets/images/video2.png'),
            backgroundColor: BlueColor,
            title: Text('')),
        BottomNavigationBarItem(
            icon: Image.asset('assets/images/heart.png'),
            backgroundColor: BlueColor,
            title: Text('')),
        BottomNavigationBarItem(
            icon: Image.asset('assets/images/menu.png'),
            backgroundColor: BlueColor,
            title: Text('')),
      ],
    );
  }
}

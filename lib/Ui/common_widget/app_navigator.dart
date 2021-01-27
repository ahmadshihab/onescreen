import 'package:flutter/material.dart';
import 'package:rjs/core/style/base_colors.dart';

Widget bottomNavigation() {
  return BottomNavigationBar(
    onTap: (int index) {},
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

import 'package:flutter/material.dart';
import 'package:rjs/Ui/Auth/Pages/login_page.dart';
import 'package:rjs/Ui/Auth/Pages/register_page.dart';
import 'package:rjs/Ui/home_page/Page/HomePage.dart';
import 'package:rjs/Ui/main_home_screen/main_home_screen.dart';
import 'package:rjs/Ui/playing_song_page/page/playing_song_page.dart';
import 'package:rjs/Ui/start_page/start_page.dart';

import '../Ui/home_page/Page/HomePage.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainScreen(),
    );
  }
}
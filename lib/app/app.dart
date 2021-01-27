import 'package:flutter/material.dart';
import 'package:rjs/Ui/Auth/Pages/register_page.dart';
import 'package:rjs/Ui/Emissions/emissions_page.dart';
import 'package:rjs/Ui/filtered/filtered_page.dart';
import 'package:rjs/Ui/main_home_screen/main_home_screen.dart';
import 'package:rjs/Ui/palyer/song_page.dart';
import 'package:rjs/Ui/playing_song_page/page/playing_song_page.dart';
import 'package:rjs/Ui/second_page/page/second_page.dart';
import 'package:rjs/core/ui/dialogs/basic_dialog.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainScreen(),
    );
  }
}
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/screenutil.dart';

import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:rjs/Ui/favorite/page/favorite_page.dart';
import 'package:rjs/Ui/filtered/filtered_page.dart';
import 'package:rjs/Ui/home_page/Page/HomePage.dart';
import 'package:rjs/Ui/playing_song_page/page/playing_song_page.dart';
import 'package:rjs/Ui/second_page/page/second_page.dart';
import 'package:rjs/core/ui/global_widgets/running_song_widget.dart';
import 'package:rjs/core/utils/screen_utils/screen_utils.dart';

class MainScreen extends StatefulWidget {
  int select;

  MainScreen({this.select});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  static int _selectedPage = 0;
  String PageTitle;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  List<Widget> _buildScreens = [
    HomePage(),
    SecondPage(),
    FilteredPage(),
    FavoritePage(),
    Scaffold(
      backgroundColor: Color(0xFF141414),
    ),
  ];

  int _currentIndex = 0;
  bool select = false;

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Image.asset(
          'assets/images/home.png',
          color: Colors.white,
          height: 26.66,
          width: 28.88,
        ),
        title: '',
        activeColor: Colors.white,
        inactiveColor: Color(0xffD1D1D1),
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(
          'assets/images/radioicon.png',
          color: Colors.white,
          height: 26.66,
          width: 28.88,
        ),
        title: '',
        activeColor: Colors.white,
        inactiveColor: Color(0xffD1D1D1),
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(
          'assets/images/video.png',
          color: Colors.white,
          height: 26.66,
          width: 28.88,
        ),
        activeColor: Colors.white,
        inactiveColor: Color(0xffD1D1D1),
        title: '',
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(
          'assets/images/heart.png',
          color: Colors.white,
          height: 26.66,
          width: 28.88,
        ),
        title: '',
        activeColor: Colors.white,
        inactiveColor: Color(0xffD1D1D1),
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(
          'assets/images/menu.png',
          color: Colors.white,
          height: 26.66,
          width: 28.88,
        ),
        title: '',
        activeColor: Colors.white,
        inactiveColor: Color(0xffD1D1D1),
      ),
    ];
  }

  PersistentTabController _controller;
  bool _hideNavBar;

  @override
  void initState() {
    super.initState();

    _controller = PersistentTabController(
        initialIndex: (widget.select == null) ? 0 : widget.select);
    _hideNavBar = false;
  }

  @override
  Widget build(BuildContext context) {
    final sizeAware = MediaQuery.of(context).size;

    ScreenUtil.init(context, allowFontScaling: true);
    ScreensHelper(context);

    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          key: _scaffoldKey,
          bottomNavigationBar: BottomAppBar(
              color: Color(0xff0D3880),
              //shape: CircularNotchedRectangle(),

              child: Container(
                height: 80,
                width: sizeAware.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            _currentIndex = 0;

                            //title="القائمة";
                          });
                          print(_currentIndex);
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 72,
                              height: 2,
                              color: _currentIndex == 0
                                  ? Colors.white
                                  : Colors.transparent,
                            ),
                            Image.asset(
                              "assets/images/home.png",
                              width: 28.88,
                              height: 26.66,
                              color: _currentIndex == 0
                                  ? Colors.white
                                  : Color(0xffD1D1D1),
                            ),
                            Container()
                          ],
                        )),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            _currentIndex = 1;

                            //title="القائمة";
                          });
                          print(_currentIndex);
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 72,
                              height: 2,
                              color: _currentIndex == 1
                                  ? Colors.white
                                  : Colors.transparent,
                            ),
                            Image.asset(
                              "assets/images/radioicon.png",
                              width: 28.88,
                              height: 26.66,
                              color: _currentIndex == 1
                                  ? Colors.white
                                  : Color(0xffD1D1D1),
                            ),
                            Container()
                          ],
                        )),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            _currentIndex = 2;

                            //title="القائمة";
                          });
                          print(_currentIndex);
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 72,
                              height: 2,
                              color: _currentIndex == 2
                                  ? Colors.white
                                  : Colors.transparent,
                            ),
                            Image.asset(
                              "assets/images/video2.png",
                              width: 28.88,
                              height: 26.66,
                            ),
                            Container()
                          ],
                        )),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            _currentIndex = 3;

                            //title="القائمة";
                          });
                          print(_currentIndex);
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 72,
                              height: 2,
                              color: _currentIndex == 3
                                  ? Colors.white
                                  : Colors.transparent,
                            ),
                            Image.asset(
                              "assets/images/heart.png",
                              width: 28.88,
                              height: 26.66,
                            ),
                            Container()
                          ],
                        )),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            _currentIndex = 4;

                            //title="القائمة";
                          });
                          print(_currentIndex);
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 72,
                              height: 2,
                              color: _currentIndex == 4
                                  ? Colors.white
                                  : Colors.transparent,
                            ),
                            Image.asset(
                              "assets/images/menu.png",
                              width: 28.88,
                              height: 26.66,
                              color: _currentIndex == 4
                                  ? Colors.white
                                  : Color(0xffD1D1D1),
                            ),
                            Container()
                          ],
                        )),
                  ],
                ),
              )),
          body: new WillPopScope(
            onWillPop: () async {
              SystemChannels.platform.invokeMethod('SystemNavigator.pop');
            },
            child: Stack(
              children: [
                _buildScreens[_currentIndex],
                /*Positioned(bottom: 0,child: RunningSongWidget(callback: (){
                  Navigator.push(context, MaterialPageRoute(builder: (ctx){
                    return PlayingSongPage();
                  }));
                },))*/
              ],
            )
          )),
    );
  }
}

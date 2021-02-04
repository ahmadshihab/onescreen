import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:just_audio/just_audio.dart';
import 'package:rjs/Ui/playing_song_page/widgets/header_widget.dart';
import 'package:rjs/core/resources.dart';
import 'package:rjs/core/ui/buttons/buttons.dart';
import 'package:rjs/core/ui/global_widgets/album_widget.dart';
import 'package:rjs/core/utils/screen_utils/screen_utils.dart';

class PlayingSongPage extends StatefulWidget {
  @override
  _PlayingSongPageState createState() => _PlayingSongPageState();
}

class _PlayingSongPageState extends State<PlayingSongPage> {
  double minimumValue = 0.0, maximumValue = 30.0, currentValue = 17.0;
  String currentTime = '17:02', endTime = '25:00';
  bool isPlaying = false;
  final AudioPlayer player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: ScreensHelper.fromHeight(100),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xff383838), Color(0xff000000)],
                  stops: [0.0, 1.0],
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                  tileMode: TileMode.repeated)),
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: ScreensHelper.fromWidth(3)),
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.fromLTRB(5, 57, 5, 0),
                child: Column(children: <Widget>[
                  HeaderWidget(),
                  DefaultGap(
                    count: 3,
                  ),
                  AlbumWidget(),
                  Slider(
                    inactiveColor: Colors.white,
                    activeColor: Colors.redAccent,
                    min: minimumValue,
                    max: maximumValue,
                    value: currentValue,
                    onChanged: (value) {
                      currentValue = value;
                      player.seek(Duration(milliseconds: currentValue.round()));
                    },
                  ),
                  Container(
                    transform: Matrix4.translationValues(0, -15, 0),
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(currentTime,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.5,
                                fontWeight: FontWeight.w500)),
                        Text(endTime,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.5,
                                fontWeight: FontWeight.w500))
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          child: Icon(
                              isPlaying
                                  ? Icons.pause_circle_filled_rounded
                                  : Icons.play_circle_fill_rounded,
                              color: Colors.redAccent,
                              size: 85),
                          behavior: HitTestBehavior.translucent,
                          onTap: () {
                            setState(() {
                              isPlaying = !isPlaying;
                            });
                            if (isPlaying) {
                              player.play();
                            } else {
                              player.pause();
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                  DefaultGap(
                    count: 3,
                  ),
                  Container(
                    width: ScreensHelper.fromWidth(40),
                    child: BasicButton(
                      onPressed: () {},
                      text: 'Réagir',
                    ),
                  )
                ]),
              ),
            ),
          )),
    );
  }
}

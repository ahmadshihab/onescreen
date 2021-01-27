import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:rjs/core/utils/screen_utils/screen_utils.dart';

class DefaultGap extends StatelessWidget {
  final double count;
  final bool isWidth;

  const DefaultGap({Key key, this.count = 1.0, this.isWidth = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: isWidth
          ? SizedBox(
              width: ScreensHelper.fromWidth(0.6 * count),
            )
          : SizedBox(
              height: ScreensHelper.fromHeight(0.6 * count),
            ),
    );
  }
}

abstract class GlobalStyles {
  static TextStyle get normalTitle => TextStyle(
      color: Colors.white,
      fontFamily: 'Montserrat',
      fontSize: ScreenUtil()?.setSp(45),
      fontWeight: FontWeight.w600);

  static TextStyle get baseTitle => TextStyle(
        fontFamily: 'semibold',
        fontSize: ScreenUtil()?.setSp(80),
        color: Colors.white,
      );
}

abstract class GlobalColors {
  static Color kColor2 = Color(0xFF3C4F5E);
  static Color whiteColor = Color(0xFFFFFFFF);
  static Color blackColor = Color(0xFF1C1C1C);
  static Color grayColor = Color(0xFFD1D1D1);
  static Color backgroundColor = Color(0xff0B0B0B);
}

abstract class GlobalIcons {
  static const albumsIcon = "assets/icons/albums.png";
  static const albums1Icon = "assets/icons/albums1.png";
  static const playNextIcon = "assets/icons/play_next.png";
  static const favoriteIcon = "assets/icons/favorite.png";
  static const addIcon = "assets/icons/add-icon.png";
  static const downloadIcon = "assets/icons/download-icon.png";
  static const infoIcon = "assets/icons/info-icon.png";
  static const upIcon = "assets/icons/up-icon.png";
}

abstract class GlobalImages {
  static const radioImage = "assets/images/radio.png";
}

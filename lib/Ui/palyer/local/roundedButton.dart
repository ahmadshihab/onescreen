import 'package:flutter/material.dart';
import 'package:rjs/core/Util.dart';
import 'package:rjs/core/custom_dimensions.dart';
import 'package:rjs/core/style/base_colors.dart';

Widget roundedButton(
    Function onPressed, String text, Color color, String iconPath,
    {double height, double width}) {
  return Container(
    width: width,
    child: FlatButton.icon(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
        color: color,
        onPressed: onPressed,
        icon: iconPath == null
            ? Container()
            : buildLocalImage(iconPath, height: height),
        label: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: WhiteColor,
              fontSize: 12,
            ),
          ),
        )),
  );
}

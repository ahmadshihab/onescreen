import 'package:flutter/material.dart';
import 'package:rjs/core/style/base_colors.dart';

Widget customText(String text , double size , bool isBold) {
    return Text(
      text ,
      style: TextStyle(
        fontFamily: 'Montserrat',
        color: WhiteColor,
        fontSize: size,
        fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
      ),
    );
}

Widget customContainer(double width , double height , double radius , Color color , Widget child) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(radius),
      color: color,
    ),
    child: child,
  );
}
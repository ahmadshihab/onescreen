import 'package:flutter/material.dart';
import 'package:rjs/core/custom_dimensions.dart';

Widget languageRow(BuildContext ctx, String anim, String lan) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      RichText(
          text: TextSpan(children: [
        TextSpan(
            text: 'Animateur:',
            style: TextStyle(
                fontSize: 13,
                color: Colors.white,
                fontWeight: FontWeight.w300)),
        TextSpan(
            text: anim,
            style: TextStyle(
                fontSize: 13, color: Colors.white, fontWeight: FontWeight.w500))
      ])),
      SizedBox(width: CustomDimensions(ctx).width * 0.2),
      RichText(
          text: TextSpan(children: [
        TextSpan(
            text: 'Langue:',
            style: TextStyle(
                fontSize: 13,
                color: Colors.white,
                fontWeight: FontWeight.w300)),
        TextSpan(
            text: lan,
            style: TextStyle(
                fontSize: 13, color: Colors.white, fontWeight: FontWeight.w500))
      ]))
    ],
  );
}

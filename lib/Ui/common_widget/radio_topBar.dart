import 'package:flutter/material.dart';
import 'package:rjs/core/Util.dart';
import 'package:rjs/core/custom_dimensions.dart';
import 'package:rjs/core/style/base_colors.dart';

Widget radioTopBar(BuildContext context, Function onPressed) {
  return Container(
    padding: EdgeInsets.symmetric(
        horizontal: CustomDimensions(context).blockSizeHorizontal * 2),
    color: Colors.black,
    height: CustomDimensions(context).height * 0.1,
    child: Padding(
      padding: EdgeInsets.symmetric(
          horizontal: CustomDimensions(context).blockSizeHorizontal * 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/images/radio.png'),
          GestureDetector(
            onTap: onPressed,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal:
                          CustomDimensions(context).blockSizeHorizontal * 2),
                  child: buildLocalSvg('assets/images/mic_icon.svg'),
                ),
                Text(
                  'Live',
                  style: TextStyle(color: RedColor),
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:rjs/core/Util.dart';
import 'package:rjs/core/custom_dimensions.dart';
import 'package:rjs/core/style/base_colors.dart';

Widget favoriteItem(
  BuildContext context, {
  double height,
  double width,
  double fontSize,
  double sizeIcon,
}) {
  return SingleChildScrollView(
    child: Container(
      padding: EdgeInsets.symmetric(
          vertical: height ?? CustomDimensions(context).blockSizeVertical,
          horizontal: width ?? CustomDimensions(context).blockSizeVertical * 0.5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/favorite_image.png',
              ),
              Positioned(
                  bottom: CustomDimensions(context).blockSizeVertical * 0.8,
                  child: Padding(
                      padding: EdgeInsets.all(
                          CustomDimensions(context).blockSizeVertical),
                      child: buildLocalSvg('assets/images/wave_icon.svg')))
            ],
          ),
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              customText(
                'Raconte moi une histoire',
                fontSize ?? 10,
                false,
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: CustomDimensions(context).blockSizeVertical * 2,
                ),
                child: Icon(
                  Icons.more_vert,
                  color: WhiteColor,
                  size: sizeIcon ?? 18,
                ),
              ),
            ],
          )
        ],
      ),
      // height: height,
      // width: width,
    ),
  );
}

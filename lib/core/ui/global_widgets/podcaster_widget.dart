import 'package:flutter/material.dart';
import 'package:rjs/core/resources.dart';
import 'package:rjs/core/utils/images_util/custom_image.dart';
import 'package:rjs/core/utils/screen_utils/screen_utils.dart';

class PodCasterWidget extends StatelessWidget {
  final String image;
  final String name;
  final String favNum;

  PodCasterWidget({Key key, this.image, this.name, this.favNum})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: ScreensHelper.fromWidth(2.5)),
      child: Column(
        children: [
          Container(
            width: ScreensHelper.fromWidth(35.5),
            height: ScreensHelper.fromHeight(18),
            child: CustomImage.circular(
              radius: ScreensHelper.fromWidth(50),
              image: image ?? 'assets/images/test.png',
              isNetworkImage: false,
            ),
          ),
          DefaultGap(
            count: 2,
          ),
          Text(
            name ?? 'Professuer Mamadou',
            style: TextStyle(color: Colors.white),
          ),
          Row(
            children: [
              Icon(
                Icons.favorite,
                size: ScreensHelper.fromWidth(3),
                color: GlobalColors.grayColor,
              ),
              DefaultGap(
                isWidth: true,
                count: 1,
              ),
              Text(
                favNum ?? '15 856',
                style: TextStyle(color: GlobalColors.grayColor),
              )
            ],
          ),
        ],
      ),
    );
  }
}

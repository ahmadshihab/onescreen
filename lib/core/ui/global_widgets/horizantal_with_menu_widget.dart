import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:rjs/core/utils/images_util/custom_image.dart';
import 'package:rjs/core/utils/screen_utils/screen_utils.dart';

import '../../resources.dart';

class HorizantalWithMenu extends StatelessWidget {
  final String img;
  final String baseTitle;
  final String subTitle;

  HorizantalWithMenu({this.img, this.baseTitle, this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: ScreensHelper.fromHeight(1)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                  width: ScreensHelper.fromWidth(14),
                  height: ScreensHelper.fromHeight(7),
                  child: CustomImage.rectangle(
                    image: img ?? 'assets/images/droit.png',
                    isNetworkImage: false,
                  )),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: ScreensHelper.fromWidth(4)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(baseTitle ?? 'De Niamey a Tombouctou',
                        style: GlobalStyles.normalTitle.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: ScreenUtil().setSp(40))),
                    DefaultGap(),
                    Text(subTitle ?? 'test sub title',
                        style: GlobalStyles.normalTitle.copyWith(
                            fontWeight: FontWeight.w300,
                            color: GlobalColors.grayColor))
                  ],
                ),
              ),
            ],
          ),
          Icon(
            Icons.more_vert,
            size: ScreensHelper.fromWidth(6),
            color: Colors.white,
          )
        ],
      ),
    );
  }
}

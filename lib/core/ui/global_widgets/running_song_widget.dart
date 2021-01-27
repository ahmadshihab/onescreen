import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:rjs/core/utils/images_util/custom_image.dart';
import 'package:rjs/core/utils/screen_utils/screen_utils.dart';

import '../../resources.dart';

class RunningSongWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreensHelper.fromWidth(100),
      color: GlobalColors.blackColor,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: ScreensHelper.fromHeight(2),
            vertical: ScreensHelper.fromWidth(3)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: ScreensHelper.fromWidth(14),
                        height: ScreensHelper.fromHeight(7),
                        child: CustomImage.circular(
                          radius: ScreensHelper.fromWidth(10),
                          image: 'assets/images/droit.png',
                          isNetworkImage: false,
                        )),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: ScreensHelper.fromWidth(4)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('De Niamey a Tombouctou',
                              style: GlobalStyles.normalTitle.copyWith(
                                  fontWeight: FontWeight.w400,
                                  fontSize: ScreenUtil().setSp(40))),
                          DefaultGap(),
                          Text('test sub title',
                              style: GlobalStyles.normalTitle.copyWith(
                                  fontWeight: FontWeight.w300,
                                  color: GlobalColors.grayColor))
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                        Icons.pause_circle_filled_rounded,
                        color: Colors.redAccent,
                        ),
                    DefaultGap(isWidth: true, count: 2,),
                    Icon(
                      Icons.keyboard_arrow_up,
                      size: ScreensHelper.fromWidth(5),
                      color: Colors.white,
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

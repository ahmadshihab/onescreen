import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:rjs/core/utils/screen_utils/screen_utils.dart';

import '../../resources.dart';

class ChooseItem extends StatelessWidget {
  final bool isIcon;
  final IconData iconData;
  final String urlIcon;
  final String text;

  ChooseItem(
      {Key key, this.isIcon = false, this.iconData, this.urlIcon, this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: ScreensHelper.fromWidth(3)),
      child: Row(
        children: [
          isIcon
              ? Icon(
                  iconData,
                  size: ScreensHelper.fromHeight(4),
                )
              : Image.asset(
                  urlIcon,
                  width: ScreensHelper.fromWidth(8),
                  height: ScreensHelper.fromHeight(3),
                ),
          DefaultGap(
            isWidth: true,
            count: 4,
          ),
          Text(this.text ?? '',
              style: GlobalStyles.normalTitle.copyWith(
                  fontWeight: FontWeight.w300,
                  fontSize: ScreenUtil().setSp(50))),
        ],
      ),
    );
  }
}

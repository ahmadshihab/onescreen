import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:rjs/core/resources.dart';
import 'package:rjs/core/utils/screen_utils/screen_utils.dart';

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: ScreensHelper.fromWidth(1)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.keyboard_arrow_down_sharp,
                size: ScreensHelper.fromWidth(10),
                color: Colors.white,
              ),
              Text('En direct', style: GlobalStyles.baseTitle.copyWith(
                fontSize: ScreenUtil()?.setSp(40)
              ),),
            ],
          ),
          Row(
            children: [
              Image.asset('assets/images/wifi.png'),
              SizedBox(width: 20,),
              Image.asset('assets/images/up-arrow.png'),
            ],
          )
        ],
      ),
    );
  }
}

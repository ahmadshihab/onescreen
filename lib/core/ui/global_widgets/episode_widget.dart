import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:rjs/core/utils/images_util/custom_image.dart';
import 'package:rjs/core/utils/screen_utils/screen_utils.dart';

import '../../resources.dart';

class EpisodeWidget extends StatelessWidget {
  final String imgPage;
  final String episodeName;
  final int episodeNumber;

  EpisodeWidget(
      {Key key,
      @required this.imgPage,
      @required this.episodeName,
      @required this.episodeNumber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            width: ScreensHelper.fromWidth(12),
            height: ScreensHelper.fromHeight(6),
            child: Padding(
              padding: EdgeInsets.only(left: 3),
              child: CustomImage.rectangle(
                image: imgPage ?? 'assets/images/placeholders/placeholder.jpg',
                isNetworkImage: false,
              ),
            )),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: ScreensHelper.fromWidth(4)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(episodeName,
                  style: GlobalStyles.normalTitle.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: ScreenUtil().setSp(40))),
              DefaultGap(),
              Text('Episode $episodeNumber',
                  style: GlobalStyles.normalTitle.copyWith(
                      fontWeight: FontWeight.w300,
                      color: GlobalColors.grayColor))
            ],
          ),
        )
      ],
    );
  }
}

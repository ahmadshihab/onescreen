import 'package:flutter/material.dart';
import 'package:rjs/core/utils/images_util/custom_image.dart';
import 'package:rjs/core/utils/screen_utils/screen_utils.dart';

import '../../resources.dart';

class AlbumWidget extends StatefulWidget {
  final String image;
  final String name;
  final String favNum;

  AlbumWidget({this.image, this.name, this.favNum});

  @override
  _AlbumWidgetState createState() => _AlbumWidgetState();
}

class _AlbumWidgetState extends State<AlbumWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: ScreensHelper.fromWidth(2.5)),
      child: Column(
        children: [
          Container(
            width: ScreensHelper.fromWidth(80),
            height: ScreensHelper.fromHeight(45),
            child: CustomImage.rectangle(
              image: widget.image ?? 'assets/images/test.png',
              isNetworkImage: false,
            ),
          ),
          DefaultGap(
            count: 4,
          ),
          Column(
            children: [
              Text(
                widget.name ?? 'Professuer Mamadou',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              DefaultGap(
                count: 1.5,
              ),
              Text(
                widget.name ?? 'Profess',
                style: TextStyle(color: Colors.grey),
              ),
              DefaultGap(
                count: 1.5,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

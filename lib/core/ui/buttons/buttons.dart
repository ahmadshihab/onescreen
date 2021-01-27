import 'package:flutter/material.dart';
import 'package:rjs/core/utils/screen_utils/screen_utils.dart';

import '../../resources.dart';

class BasicButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  final bool withElevation;
  final Color color;
  final Color textColor;
  final bool withLeading;
  final String leadingImage;

  const BasicButton(
      {Key key,
      this.onPressed,
      this.text,
      this.withElevation = false,
      this.color,
      this.textColor,
      this.withLeading = false,
      this.leadingImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: withElevation
          ? BoxDecoration(
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.blueGrey.withOpacity(0.1),
                  blurRadius: 10,
                  offset: Offset(0, 2),
                ),
              ],
            )
          : BoxDecoration(),
      child: FlatButton(
        height: ScreensHelper.fromHeight(7),
        onPressed: () {
          onPressed();
        },
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(ScreensHelper.fromWidth(8))),
        color: color ?? Colors.grey,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            withLeading
                ? Padding(
                    padding: EdgeInsets.all(ScreensHelper.fromWidth(1)),
                    child: Image.asset(
                      leadingImage,
                      color: Colors.white,
                      fit: BoxFit.fitHeight,
                    ),
                  )
                : Container(),
            Text(
              text,
              style: TextStyle(color: textColor ?? Colors.white, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}


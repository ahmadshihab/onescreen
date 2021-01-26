import 'package:flutter/material.dart';

class CustomDimensions {
  var ctx;
  double width;
  double height;
  double devicePixelRatio;
  double blockSizeHorizontal;
  double blockSizeVertical;

  CustomDimensions(this.ctx)
      : this.width = MediaQuery.of(ctx).size.width,
        this.height = MediaQuery.of(ctx).size.height,
        this.devicePixelRatio = MediaQuery.of(ctx).devicePixelRatio,
        this.blockSizeVertical = MediaQuery.of(ctx).size.height / 100,
        this.blockSizeHorizontal = MediaQuery.of(ctx).size.width / 100;
}

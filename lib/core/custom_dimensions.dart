import 'package:flutter/material.dart';

class CustomDimensions {
  var ctx;
  double width;
  double height;
  CustomDimensions(this.ctx)
      : this.width = MediaQuery.of(ctx).size.width,
        this.height = MediaQuery.of(ctx).size.height;
}
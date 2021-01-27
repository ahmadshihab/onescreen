import 'package:flutter/material.dart';

import 'cashed_image.dart';


class CustomImage extends StatelessWidget {
  final double cornerRadius;
  final double width;
  final double height;
  final String image;
  final Widget placeHolder;
  final bool isNetworkImage;
  final BoxShadow shadow;

  const CustomImage._({
    @required this.cornerRadius,
    @required this.image,
    this.width,
    this.height,
    this.placeHolder,
    this.isNetworkImage = true,
    this.shadow,
  });

  factory CustomImage.circular({
    @required double radius,
    @required String image,
    Widget placeHolder,
    BoxShadow shadow,
    isNetworkImage = true,
  }) =>
      CustomImage._(
        image: image,
        cornerRadius: radius,
        height: radius,
        width: radius,
        isNetworkImage: isNetworkImage,
        placeHolder: placeHolder,
        shadow: shadow,
      );

  factory CustomImage.rectangle({
    double cornerRadius = 0.0,
    @required String image,
    double width,
    double height,
    Widget placeHolder,
    BoxShadow shadow,
    isNetworkImage = true,
  }) =>
      CustomImage._(
        image: image,
        cornerRadius: cornerRadius,
        height: height,
        width: width,
        isNetworkImage: isNetworkImage,
        placeHolder: placeHolder,
        shadow: shadow,
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      height: this.height,
      decoration: shadow == null ? null : BoxDecoration(boxShadow: [shadow]),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(cornerRadius),
          child: isNetworkImage == null || isNetworkImage == true
              ? CachedImage(
            imageUrl: image,
            placeholder: placeHolder,
          )
              : Image.asset(
            image,
            fit: BoxFit.fill,
          )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:rjs/core/custom_dimensions.dart';
import 'package:rjs/core/style/base_colors.dart';

Widget selectOptionRow(BuildContext context, String option, String trial,
    {double horizontal}) {
  return InkWell(
    onTap: () {},
    child: Container(
      padding: EdgeInsets.all(CustomDimensions(context).devicePixelRatio * 3),
      margin: EdgeInsets.symmetric(
          vertical: CustomDimensions(context).blockSizeVertical,
          horizontal:
              horizontal ?? CustomDimensions(context).blockSizeHorizontal * 5),
      decoration: BoxDecoration(
        color: BlackColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(CustomDimensions(context).devicePixelRatio),
            margin: EdgeInsets.all(
                CustomDimensions(context).blockSizeHorizontal * 2),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                width: 1,
                color: GreyAccent,
              ),
            ),
            child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: RedColor,
                ),
                child: Padding(
                  padding: EdgeInsets.all(
                      CustomDimensions(context).blockSizeHorizontal * 1.5),
                  child: Container(),
                )),
          ),
          Text(option, style: TextStyle(color: Colors.white , fontFamily: 'Montserrat' , fontWeight: FontWeight.w300)),
          Spacer(),
          Text(trial, style: TextStyle(color: Colors.white , fontFamily: 'Montserrat' , fontWeight: FontWeight.w300)),
        ],
      ),
    ),
  );
}

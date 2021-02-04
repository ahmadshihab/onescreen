import 'package:flutter/material.dart';
import 'package:rjs/core/custom_dimensions.dart';
import 'package:rjs/core/style/base_colors.dart';

Widget dateAndTime(BuildContext context) {
  return Expanded(
    child: Row(
      children: [
        Container(
            margin: EdgeInsets.only(
                top: CustomDimensions(context).blockSizeVertical * 2),
            width: CustomDimensions(context).width * 0.25,
            height: CustomDimensions(context).height * 0.08,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: BlueColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8), bottomLeft: Radius.circular(8)),
            ),
            child: Center(
              child: Center(
                child: Text('19h30',
                    style: TextStyle(color: Colors.white, fontSize: 32)),
              ),
            )),

        Container(
            margin: EdgeInsets.only(
                top: CustomDimensions(context).blockSizeVertical * 2),
            width: CustomDimensions(context).width * 0.18,
            height: CustomDimensions(context).height * 0.08,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: GreyAccent,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(8),
                  bottomRight: Radius.circular(8)),
            ),
            child: Center(
              child: Text(
                '20 Janv\n 2020',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            )),

//                    Material(
//                      color: Colors.red,
//                        child: Text('20 Janv 2020')),
      ],
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:rjs/core/Util.dart';
import 'package:rjs/core/custom_dimensions.dart';
import 'package:rjs/core/style/base_colors.dart';

Widget similarList(BuildContext ctx) {
  return Container(
    height: CustomDimensions(ctx).height * 0.3,
    child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(
          top: CustomDimensions(ctx).blockSizeVertical * 3,
        ),
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                      // margin: EdgeInsets.symmetric(
                      //     vertical: CustomDimensions(ctx).blockSizeVertical),
                      width: CustomDimensions(ctx).width * 0.4,
                      height: CustomDimensions(ctx).height * 0.2,
                      child: Stack(
                        children: [
                          Image.asset(
                            'assets/images/similar_image.png',
                          ),
                          Positioned(
                              bottom:
                                  CustomDimensions(ctx).blockSizeHorizontal *
                                      1.5,
                              child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: buildLocalSvg(
                                      'assets/images/wave_icon.svg')))
                        ],
                      )),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: CustomDimensions(ctx).blockSizeVertical),
                child: Text(
                  'De Niamey à Tombouctou',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
              Text(
                'Nabounou Diabi',
                style: TextStyle(color: GreyAccent, fontSize: 12),
              )
            ],
          );
        }),
  );
}

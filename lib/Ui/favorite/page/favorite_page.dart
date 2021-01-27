import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rjs/Ui/common_widget/app_navigator.dart';
import 'package:rjs/Ui/common_widget/favorite_item.dart';
import 'package:rjs/Ui/common_widget/radio_topBar.dart';
import 'package:rjs/app/app.dart';
import 'package:rjs/core/Util.dart';
import 'package:rjs/core/custom_dimensions.dart';
import 'package:rjs/core/style/base_colors.dart';

class FavoritePage extends StatefulWidget {
  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: bottomNavigation(),
        backgroundColor: Color(0XFF141414),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            radioTopBar(context, () {}),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: CustomDimensions(context).blockSizeVertical * 2,
                  horizontal: CustomDimensions(context).blockSizeVertical * 2),
              child: Text(
                'Mes favoris',
                style: TextStyle(
                    fontSize: 32,
                    color: WhiteColor,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal:
                        CustomDimensions(context).blockSizeHorizontal * 4),
                child: GridView(
                  padding: EdgeInsets.symmetric(
                      vertical:
                          CustomDimensions(context).blockSizeVertical * 2),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing:
                        CustomDimensions(context).blockSizeVertical,
                    crossAxisSpacing:
                        CustomDimensions(context).blockSizeVertical * 3,
                    childAspectRatio: 0.75,
                  ),
                  children: [
                    favoriteItem(context),
                    favoriteItem(context),
                    favoriteItem(context),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

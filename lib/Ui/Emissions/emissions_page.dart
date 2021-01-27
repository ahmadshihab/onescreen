import 'package:flutter/material.dart';
import 'package:rjs/Ui/common_widget/app_navigator.dart';
import 'package:rjs/Ui/common_widget/favorite_item.dart';
import 'package:rjs/Ui/common_widget/radio_topBar.dart';
import 'package:rjs/core/Util.dart';
import 'package:rjs/core/custom_dimensions.dart';
import 'package:rjs/core/style/base_colors.dart';

class EmissionPage extends StatefulWidget {
  @override
  _EmissionPageState createState() => _EmissionPageState();
}

class _EmissionPageState extends State<EmissionPage> {
  @override
  Widget build(BuildContext context) {


    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFF141414),
        bottomNavigationBar: bottomNavigation(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              radioTopBar(context, () {}),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: CustomDimensions(context).blockSizeVertical * 2,
                    horizontal:
                        CustomDimensions(context).blockSizeHorizontal * 4),
                child: customText('Émissions', 32, false),
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal:
                            CustomDimensions(context).blockSizeHorizontal * 2),
                    width: CustomDimensions(context).width * 0.87,
                    height: CustomDimensions(context).height * 0.07,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(32.0),
                            ),
                          ),
                          filled: true,
                          suffixIcon:
                              Image.asset('assets/images/search_icon.png'),
                          fillColor: BlackColor),
                    ),
                  ),
                  buildLocalImage(
                    'assets/images/sort_icon.png',
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: CustomDimensions(context).blockSizeHorizontal * 3,
                      top: CustomDimensions(context).blockSizeHorizontal * 4,
                      bottom:
                          CustomDimensions(context).blockSizeHorizontal * 2.5,
                    ),
                    child: Text(
                      'Les plus populaires',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  similarList(context),
                  Padding(
                    padding: EdgeInsets.only(
                      left: CustomDimensions(context).blockSizeHorizontal * 3,
                      //top: CustomDimensions(context).blockSizeVertical * 2,
                      bottom: CustomDimensions(context).blockSizeVertical,
                    ),
                    child: customText('Nouveautés', 20, false),
                  ),
                  GridView.builder(
                      itemCount: 9,
                      padding: EdgeInsets.symmetric(
                          horizontal:
                              CustomDimensions(context).blockSizeHorizontal *
                                  3),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 0.78,
                      ),
                      itemBuilder: (context, index) {
                        return Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                      'assets/images/favorite_image.png',
                                      fit: BoxFit.fitWidth),
                                  Positioned(
                                      bottom: CustomDimensions(context)
                                              .blockSizeVertical *
                                          0.8,
                                      child: Padding(
                                          padding: EdgeInsets.all(
                                              CustomDimensions(context)
                                                  .blockSizeVertical),
                                          child: buildLocalSvg(
                                              'assets/images/wave_icon.svg')))
                                ],
                              ),
                              Row(
                                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  customText(
                                    'Raconte moi une histoire',
                                    7,
                                    false,
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      vertical: CustomDimensions(context)
                                              .blockSizeVertical *
                                          2,
                                    ),
                                    child: Icon(
                                      Icons.more_vert,
                                      color: WhiteColor,
                                      size: 10,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          padding: EdgeInsets.only(
                            right:
                                CustomDimensions(context).blockSizeHorizontal *
                                    2,
                          ),
                        );
                      }),
                  //songContainer(context),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget similarList(BuildContext ctx) {
  return Container(
    padding: EdgeInsets.symmetric(
      // vertical: CustomDimensions(ctx).blockSizeVertical * 0.45,
      horizontal: CustomDimensions(ctx).blockSizeHorizontal * 2,
    ),
    height: CustomDimensions(ctx).height * 0.33,
    child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        // padding: EdgeInsets.only(
        //   top: CustomDimensions(ctx).blockSizeVertical * 3,
        // ),
        itemBuilder: (context, index) {
          return Container(
              margin: EdgeInsets.only(
                  right: CustomDimensions(ctx).blockSizeHorizontal * 2),
              width: CustomDimensions(ctx).width * 0.4,
              height: CustomDimensions(ctx).height * 0.25,
              child: favoriteItem(context, fontSize: 10));
        }),
  );
}

Widget songContainer(BuildContext context) {
  return Container(
    color: Colors.black,
    width: CustomDimensions(context).width,
    height: CustomDimensions(context).height * 0.1,
    child: Stack(
      children: [
        Positioned(
          width: CustomDimensions(context).width,
          top: -20,
          child: SliderTheme(
            data: SliderThemeData(
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 5),
              trackHeight: 1,
            ),
            child: Slider(
                min: 0,
                max: 100,
                activeColor: RedColor,
                inactiveColor: Colors.transparent,
                value: 70,
                onChanged: (val) {}),
          ),
        ),
        Row(
          children: [
            Expanded(
              flex: 9,
              child: ListTile(
                leading: Container(
                    width: CustomDimensions(context).width * 0.12,
                    height: CustomDimensions(context).width * 0.12,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image:
                                AssetImage('assets/images/song_image.png')))),
                title: Text(
                  'Je t’emmène en voyage',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                subtitle: Text(
                  'Épisode 01',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                trailing: Container(
                  width: CustomDimensions(context).width * 0.1,
                  height: CustomDimensions(context).width * 0.1,
                  child: IconButton(
                      icon: Icon(
                    Icons.pause,
                    color: Colors.white,
                  )),
                  decoration: BoxDecoration(
                    color: RedColor,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
            Expanded(
                flex: 1,
                child: buildLocalImage('assets/images/arrow_up_icon.png')),
          ],
        )
      ],
    ),
  );
}

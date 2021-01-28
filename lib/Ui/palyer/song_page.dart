import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:rjs/Ui/common_widget/app_navigator.dart';
import 'package:rjs/Ui/common_widget/select_option_row.dart';
import 'package:rjs/app/app.dart';
import 'package:rjs/core/Util.dart';
import 'package:rjs/core/custom_dimensions.dart';
import 'package:rjs/core/resources.dart';
import 'package:rjs/core/style/base_colors.dart';
import 'package:rjs/core/utils/screen_utils/screen_utils.dart';

import 'local/date_time.dart';
import 'local/languageRow.dart';
import 'local/roundedButton.dart';
import 'local/similar_list.dart';

class SongPage extends StatefulWidget {
  @override
  _SongPageState createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, allowFontScaling: true);
    ScreensHelper(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        bottomNavigationBar: BottomNavigator(),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: EdgeInsets.all(
                CustomDimensions(context).blockSizeHorizontal * 4),
            child: buildLocalSvg('assets/images/arrow_down_icon.svg'),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.favorite,
                color: WhiteColor,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal:
                      CustomDimensions(context).blockSizeHorizontal * 2),
              child: buildLocalSvg('assets/images/screen_share_icon.svg'),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal:
                      CustomDimensions(context).blockSizeHorizontal * 2),
              child: buildLocalSvg('assets/images/upload_icon.svg'),
            ),
          ],
        ),
        body: Padding(
          padding:
              EdgeInsets.all(
                ScreensHelper.fromWidth(2)
              ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                topSection(context),
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical:
                          CustomDimensions(context).blockSizeVertical * 2,
                  horizontal: ScreensHelper.fromWidth(2)),
                  child: Text(
                    'Voyager avec Nourya Kone grâce aux témoignages de nombreux \nvoyageurs qui vous feront découvrir les meilleurs endroits.',
                    style: TextStyle(
                        fontSize: 11,
                        color: Colors.white,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                languageRow(
                  context,
                  ' Nourya KONE',
                  ' Français',
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical:
                          CustomDimensions(context).blockSizeVertical * 2,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      roundedButton(() {
                        showDialog(
                            context: context,
                            builder: (BuildContext ctx) {
                              return _alertDialog(ctx);
                            });
                      }, 'Télécharger', BlueColor,
                          'assets/images/download_icon.png',
                          height:
                              CustomDimensions(context).blockSizeVertical * 2.5,
                          width: CustomDimensions(context).width * 0.3),
                      roundedButton(() {}, 'Réagir', Color(0XFF4A4A4A),
                          'assets/images/message_icon.png',
                          height:
                              CustomDimensions(context).blockSizeVertical * 2.5,
                          width: CustomDimensions(context).width * 0.3),
                      roundedButton(() {}, 'S’abonner', RedColor, null,
                          width: CustomDimensions(context).width * 0.3),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      right: CustomDimensions(context).blockSizeHorizontal * 6),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                CustomDimensions(context).blockSizeHorizontal *
                                    3),
                        child: buildLocalImage('assets/images/album_Icon.png'),
                      ),
                      Text(
                        'Épisodes',
                        style: TextStyle(
                          color: WhiteColor,
                          fontSize: 20,
                        ),
                      ),
                      Spacer(),
                      IconButton(
                          icon: Icon(
                        Icons.keyboard_arrow_up_sharp,
                        color: Colors.white,
                        size: 30,
                      ))
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: CustomDimensions(context).blockSizeHorizontal * 6),
                  child: ListTile(
                    title: Text(
                      'Air ténéré',
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      '28:52',
                      style: TextStyle(color: Colors.grey),
                    ),
                    trailing: IconButton(
                      icon: Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: CustomDimensions(context).blockSizeHorizontal * 6),
                  child: ListTile(
                    title: Text(
                      'Souvenir de Nouakchott',
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      '4:14',
                      style: TextStyle(color: Colors.grey),
                    ),
                    trailing: IconButton(
                      icon: Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      vertical:
                          CustomDimensions(context).blockSizeVertical * 2),
                  padding: EdgeInsets.all(
                      CustomDimensions(context).blockSizeHorizontal * 2),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: BlackColor,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Programme de l’émission',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          dateAndTime(context),
                          dateAndTime(context),
                        ],
                      ),
                    ],
                  ),
                ),
                customText('Similaires', 20, true),
                similarList(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget topSection(BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(
        horizontal: CustomDimensions(context).blockSizeHorizontal),
    height: ScreensHelper.fromHeight(47.8),
    child: Stack(
      children: [
        Image.asset(
          'assets/images/song_image.png',
          fit: BoxFit.cover,
          width: CustomDimensions(context).width,
          height: ScreensHelper.fromHeight(40),
        ),
        Positioned(
            bottom: 0,
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: ScreensHelper.fromWidth(2)),
              child: Container(
                width: ScreensHelper.fromWidth(90),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          right: ScreensHelper.fromWidth(3)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '03:00 / 05:00',
                            style: TextStyle(color: Colors.white),
                          ),
                          buildLocalImage('assets/images/backward_icon.png'),
                        ],
                      ),
                    ),
                    DefaultGap(
                      count: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            customText('Je t’emmène \nen voyage', 29, true),
                            Container(
                              color: BlackColor,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.remove_red_eye_outlined,
                                    color: GreyAccent,
                                    size: 9,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: CustomDimensions(context)
                                                .blockSizeHorizontal *
                                            2),
                                    child: Text(
                                      '2231',
                                      style: TextStyle(
                                          color: GreyAccent, fontSize: 9),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
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
                            DefaultGap(
                              count: 2,
                            ),
                            buildLocalImage('assets/images/forward_icon.png'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )),
      ],
    ),
  );
}

Widget _alertDialog(BuildContext context) {
  return Align(
    alignment: Alignment(0, -0.4),
    child: Material(
        elevation: 30,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Container(
          height: CustomDimensions(context).height * 0.48,
          width: CustomDimensions(context).width * 0.8,
          padding: EdgeInsets.only(
              top: CustomDimensions(context).blockSizeVertical * 2),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Color(0XFF3A3A3D),
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Options de téléchargement',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical:
                        CustomDimensions(context).blockSizeVertical * 1.5),
                child: Divider(
                  thickness: 1,
                  color: GreyAccent,
                  indent: CustomDimensions(context).blockSizeHorizontal * 4,
                  endIndent: CustomDimensions(context).blockSizeHorizontal * 4,
                ),
              ),
              ListView(
                children: [
                  selectOptionRow(context, 'MP3 - 14 Mo', 'Par défaut'),
                  selectOptionRow(context, 'MP3 - 20 Mo', ''),
                  selectOptionRow(context, 'MP4 - 52 Mo', ''),
                ],
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: CustomDimensions(context).width * 0.05,
                  vertical: CustomDimensions(context).width * 0.02,
                ),
                child: customContainer(
                    CustomDimensions(context).width,
                    CustomDimensions(context).height * 0.07,
                    8,
                    BlueColor,
                    Center(
                      child: customText('Télécharger', 18, true),
                    )),
              ),
            ],
          ),
        )),
  );
}

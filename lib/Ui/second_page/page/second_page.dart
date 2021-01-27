import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:rjs/core/resources.dart';
import 'package:rjs/core/ui/global_widgets/cards_with_menu.dart';
import 'package:rjs/core/ui/global_widgets/horizantal_with_menu_widget.dart';
import 'package:rjs/core/ui/global_widgets/podcaster_widget.dart';
import 'package:rjs/core/ui/global_widgets/running_song_widget.dart';
import 'package:rjs/core/utils/screen_utils/screen_utils.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: GlobalColors.backgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(ScreensHelper.fromWidth(5)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(GlobalImages.radioImage),
                    Row(
                      children: [
                        Icon(
                          Icons.mic_rounded,
                          color: Color(0xffCB4731),
                        ),
                        Text(
                          'Live',
                          style: TextStyle(
                              color: Color(0xffCB4731),
                              fontSize: 13,
                              fontFamily: 'medium'),
                        )
                      ],
                    )
                  ],
                ),
                DefaultGap(),
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: ScreensHelper.fromWidth(5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Podcasts',
                        style: GlobalStyles.baseTitle,
                      ),
                    ],
                  ),
                ),
                DefaultGap(),
                Row(
                  children: [
                    Expanded(
                      child: _getSearchBar(),
                    ),
                    DefaultGap(
                      isWidth: true,
                      count: 2,
                    ),
                    Image.asset('assets/images/menuu.png'),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: ScreensHelper.fromWidth(5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Populaire cette semaine',
                        style: GlobalStyles.baseTitle
                            .copyWith(fontSize: ScreenUtil()?.setSp(55)),
                      ),
                    ],
                  ),
                ),
                Container(
                    height: 172,
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 6,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return index == 0
                              ? CardsWithMenu(
                                  text: 'Le monde selon Mamadou',
                                  imgurl: 'assets/images/pic1.png',
                                )
                              : CardsWithMenu(
                                  text: 'Docteur Sarah',
                                  imgurl: 'assets/images/pic2.png',
                                );
                        })),
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: ScreensHelper.fromWidth(5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Nouveautes',
                        style: GlobalStyles.baseTitle
                            .copyWith(fontSize: ScreenUtil()?.setSp(55)),
                      ),
                    ],
                  ),
                ),
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return index == 0
                          ? HorizantalWithMenu(
                              img: 'assets/images/pic5.png',
                            )
                          : index == 1
                              ? HorizantalWithMenu(
                                  img: 'assets/images/pic6.png')
                              : HorizantalWithMenu(
                                  img: 'assets/images/pic7.png');
                    }),
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: ScreensHelper.fromWidth(5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'PodCasteurs',
                        style: GlobalStyles.baseTitle
                            .copyWith(fontSize: ScreenUtil()?.setSp(55)),
                      ),
                    ],
                  ),
                ),
                Container(
                    height: 172,
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 6,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return index == 0
                              ? PodCasterWidget(image: 'assets/images/pic3.png')
                              : PodCasterWidget(
                                  image: 'assets/images/pic4.png',
                                );
                        })),
                DefaultGap(
                  count: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _getSearchBar() {
    return TextFormField(
      textInputAction: TextInputAction.search,
      keyboardType: TextInputType.text,
      onTap: () {},
      onEditingComplete: () {
        print('onnEditing Complete!');
      },
      onSaved: (v) {
        print('onnSaved!');
      },
      maxLines: 1,
      decoration: InputDecoration(
          filled: true,
          fillColor: GlobalColors.blackColor,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(ScreensHelper.fromWidth(8)),
          ),
          errorBorder: InputBorder.none,
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: GlobalColors.blackColor),
            borderRadius: BorderRadius.circular(ScreensHelper.fromWidth(8)),
          ),
          errorStyle: const TextStyle(height: 0.8),
          isDense: true,
          suffixIcon: Icon(
            Icons.search,
            color: GlobalColors.grayColor,
            size: ScreensHelper.fromWidth(7),
          )),
    );
  }
}

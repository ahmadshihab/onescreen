import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rjs/Ui/common_widget/app_navigator.dart';
import 'package:rjs/Ui/common_widget/select_option_row.dart';
import 'package:rjs/core/Util.dart';
import 'package:rjs/core/custom_dimensions.dart';
import 'package:rjs/core/style/base_colors.dart';

class FilteredPage extends StatefulWidget {
  @override
  _FilteredPageState createState() => _FilteredPageState();
}

class _FilteredPageState extends State<FilteredPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigator(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 5,
        title: customText(
          'Filtre',
          22,
          true,
        ),
        leading: Padding(
          padding:
              EdgeInsets.all(CustomDimensions(context).blockSizeHorizontal * 3),
          child: buildLocalSvg('assets/images/arrow_down_icon.svg', height: 12),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(
                CustomDimensions(context).blockSizeHorizontal * 5),
            child: Text(
              'Annuler',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w300),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.all(CustomDimensions(context).blockSizeHorizontal * 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              buildFilterItem(context, 'Pays', 'Voir tout'),
              buildFilterItem(context, 'Tirer par', 'Ordre Alphabétique'),
              Text(
                'Catégorie',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: CustomDimensions(context).blockSizeVertical),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                      ),
                      filled: true,
                      suffixIcon: Image.asset('assets/images/search_icon.png'),
                      fillColor: BlackColor),
                ),
              ),
              categories(context),
              buildFilterItem(context, 'Animateur', 'Voir tout'),
              Text(
                'Langue',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
              selectOptionRow(context, 'Français', '105',
                  horizontal: CustomDimensions(context).devicePixelRatio),
              selectOptionRow(context, 'Arabe', '76',
                  horizontal: CustomDimensions(context).devicePixelRatio),
              selectOptionRow(context, 'Anglais', '45',
                  horizontal: CustomDimensions(context).devicePixelRatio),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: CustomDimensions(context).blockSizeHorizontal,
                  vertical: CustomDimensions(context).width * 0.04,
                ),
                child: customContainer(
                    CustomDimensions(context).width,
                    CustomDimensions(context).height * 0.07,
                    12,
                    BlueColor,
                    Center(
                      child: customText('Filtrer', 18, true),
                    )),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

Widget dropDownButton(BuildContext context, String text) {
  return Container(
    margin: EdgeInsets.symmetric(
        vertical: CustomDimensions(context).blockSizeVertical * 2),
    padding: EdgeInsets.all(CustomDimensions(context).blockSizeHorizontal * 4),
    width: CustomDimensions(context).width,
    height: CustomDimensions(context).height * 0.08,
    child: DropdownButton(
      icon: Icon(
        Icons.keyboard_arrow_down_outlined,
        color: GreyAccent,
      ),
      underline: Container(),
      isExpanded: true,
      hint: Text(
        text,
        style: TextStyle(color: GreyAccent, fontSize: 14),
      ),
    ),
    decoration: ShapeDecoration(
      color: BlackColor,
      shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1.0,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(8)),
    ),
  );
}

Widget categories(BuildContext context) {
  return Padding(
    padding: EdgeInsets.symmetric(
        vertical: CustomDimensions(context).blockSizeVertical * 1.5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        customContainer(
            CustomDimensions(context).width * 0.2,
            CustomDimensions(context).height * 0.04,
            28,
            BlueColor,
            Center(
              child: Text(
                'Culture',
                style: TextStyle(color: WhiteColor, fontSize: 10),
              ),
            )),
        customContainer(
            CustomDimensions(context).width * 0.2,
            CustomDimensions(context).height * 0.04,
            28,
            BlueColor,
            Center(
              child: Text(
                'Éducation',
                style: TextStyle(color: WhiteColor, fontSize: 10),
              ),
            )),
        customContainer(
            CustomDimensions(context).width * 0.2,
            CustomDimensions(context).height * 0.04,
            28,
            BlueColor,
            Center(
              child: Text(
                'Politique',
                style: TextStyle(color: WhiteColor, fontSize: 10),
              ),
            )),
        customContainer(
            CustomDimensions(context).width * 0.2,
            CustomDimensions(context).height * 0.04,
            28,
            BlueColor,
            Center(
              child: Text(
                'Actualités',
                style: TextStyle(color: WhiteColor, fontSize: 10),
              ),
            ))
      ],
    ),
  );
}

Widget buildFilterItem(BuildContext context, String text, String label) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Text(
        text,
        style: TextStyle(
            fontSize: 14, color: Colors.white, fontFamily: 'Montserrat-light'),
      ),
      dropDownButton(context, label),
    ],
  );
}

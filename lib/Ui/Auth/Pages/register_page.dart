import 'package:flutter/material.dart';
import 'package:rjs/core/Util.dart';
import 'package:rjs/core/custom_dimensions.dart';
import 'package:rjs/core/style/base_colors.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  TextEditingController  name=TextEditingController();
  TextEditingController  phone=TextEditingController();
  TextEditingController  email=TextEditingController();
  TextEditingController  password=TextEditingController();

  @override
  Widget build(BuildContext context) {
      return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xFF0B0B0B),
          appBar: AppBar(
            backgroundColor: Color(0xFF0B0B0B),
            elevation: 0,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(CustomDimensions(context).height * 0.05),
              child: customText('S’inscrire', 26.0, true),
            ),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                 Container(
                  padding: EdgeInsets.symmetric(
                  horizontal: CustomDimensions(context).width * 0.05,
                  vertical: CustomDimensions(context).width * 0.04,
                  ),
                  child: Column(
                    children: [
                       Align(
                        alignment: Alignment.topLeft,
                        child: customText('Pays', 16 , false)
                       ),
                      SizedBox(height: 10,),

                    ],
                  ),
                ),
                buildItem('Nom et prénom(s)' , name),
                buildItem('Numéro de téléphone' , phone),
                buildItem('Adresse email' , email),
                buildItem('Mot de passe' , password),
                Container(
                    padding: EdgeInsets.symmetric(
                    horizontal: CustomDimensions(context).width * 0.05,
                    vertical: CustomDimensions(context).width * 0.04,
                  ),
                  child: customContainer(CustomDimensions(context).width, CustomDimensions(context).height * 0.07, 12, BlueColor,
                      Center(
                        child: customText('S’inscrire', 18, true),
                      )
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }

  Widget buildItem(String s, TextEditingController field) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: CustomDimensions(context).width * 0.05,
        vertical: CustomDimensions(context).width * 0.04,
      ),
      child: Column(
        children: [
          Align(
              alignment: Alignment.topLeft,
              child: customText(s, 16 , false)
          ),
          SizedBox(height: 10,),
          customContainer(CustomDimensions(context).width, CustomDimensions(context).height * 0.07, 12, Color(0xFF222222).withOpacity(0.76), TextFormField(
            style: TextStyle(
              color: WhiteColor
            ),
            controller: field,
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 20),
            ),
          ))
        ],
      ),
    );
  }
}

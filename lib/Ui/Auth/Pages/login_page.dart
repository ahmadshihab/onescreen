import 'package:flutter/material.dart';
import 'package:rjs/Ui/main_home_screen/main_home_screen.dart';
import 'package:rjs/core/Util.dart';
import 'package:rjs/core/custom_dimensions.dart';
import 'package:rjs/core/style/base_colors.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool _visible = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF0B0B0B),
        ),
        backgroundColor: Color(0xFF0B0B0B),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 25),
                  child: customText('Se connecter', 26.0, true)),
              buildItem('Adresse email', email, Container()),
              buildItem('Mot de passe', password,
                  Image.asset('assets/images/eye.png')),
              Container(
                width: CustomDimensions(context).width * 0.8,
                child: Text(
                  'Mot de passe oublié ?',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: WhiteColor,
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.underline),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                    return MainScreen();
                  }));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: CustomDimensions(context).width * 0.05,
                    vertical: CustomDimensions(context).width * 0.04,
                  ),
                  child: customContainer(
                      CustomDimensions(context).width,
                      CustomDimensions(context).height * 0.07,
                      12,
                      BlueColor,
                      Center(
                        child: customText('Connexion', 18, true),
                      )),
                ),
              ),
              SizedBox(
                height: CustomDimensions(context).height * 0.15,
              ),
              GestureDetector(
                onTap: () {},
                child: customContainer(
                  CustomDimensions(context).width * 0.85,
                  CustomDimensions(context).height * 0.06,
                  20,
                  Color(0xFF4267B2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/images/facebook.png'),
                      customText(
                          'Connexion avec mon compte facebook', 12, false)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: CustomDimensions(context).height * 0.03,
              ),
              GestureDetector(
                onTap: () {},
                child: customContainer(
                  CustomDimensions(context).width * 0.85,
                  CustomDimensions(context).height * 0.06,
                  20,
                  Colors.white,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/images/gmail.png'),
                      Text(
                        'Connexion avec mon compte google',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Color(0xFF303033),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: CustomDimensions(context).height * 0.1,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildItem(String s, TextEditingController field, Widget icon) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: CustomDimensions(context).width * 0.05,
        vertical: CustomDimensions(context).width * 0.04,
      ),
      child: Column(
        children: [
          Align(
              alignment: Alignment.topLeft,
              child: Text(
                s,
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: WhiteColor,
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                ),
              )),
          SizedBox(
            height: 10,
          ),
          customContainer(
            CustomDimensions(context).width,
            CustomDimensions(context).height * 0.07,
            12,
            Color(0xFF222222).withOpacity(0.76),
            Stack(
              children: [
                TextFormField(
                  style: TextStyle(color: WhiteColor),
                  controller: field,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 20),
                  ),
                  obscureText: _visible,
                ),
                Positioned(
                  left: CustomDimensions(context).width * 0.77,
                  top: 10,
                  child: GestureDetector(
                      onTap: () {
                        _visible = !_visible;
                        setState(() {});
                      },
                      child: icon),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

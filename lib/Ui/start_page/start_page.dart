import 'package:flutter/material.dart';
import 'package:rjs/core/Util.dart';
import 'package:rjs/core/custom_dimensions.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/images/bg.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: CustomDimensions(context).height * 0.16),
                    child: Image.asset('assets/images/bigradio.png'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  customText('Bienvenue sur RJS', 21, false),
                  customText('la radio 100% jeune', 21, false),
                  SizedBox(height: CustomDimensions(context).height * 0.12),
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
                              customText('Connexion avec mon compte facebook',
                                  12, false)
                            ],
                          ))),
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
                          ))),
                  SizedBox(
                    height: CustomDimensions(context).height * 0.06,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: CustomDimensions(context).width * 0.85,
                      height: CustomDimensions(context).height * 0.06,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.white, width: 1.5),
                      ),
                      child: Center(
                        child: customText(
                            'S’inscrire avec son adresse email', 14, true),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      customText('Vous avez déjà un compte ?', 13, false),
                      GestureDetector(
                        onTap: () {

                        },
                        child: customText('Connectez-vous', 14, true),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Center(
                    child: Text(
                      'Conditions d’utilisation',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontSize: 11,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(height: 6,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      customText('Partenaires', 10, false),
                      SizedBox(width: 20,),
                      Image.asset('assets/images/flag1.png'),
                      SizedBox(width: 10,),
                      Image.asset('assets/images/flag2.png'),
                      SizedBox(width: 10,),
                      Image.asset('assets/images/flag3.png'),
                    ],
                  ),
                  SizedBox(height: CustomDimensions(context).height * 0.2,)
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}

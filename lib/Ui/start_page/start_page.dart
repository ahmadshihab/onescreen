import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:rjs/Ui/Auth/Pages/login_page.dart';
import 'package:rjs/Ui/Auth/Pages/register_page.dart';
import 'package:rjs/Ui/main_home_screen/main_home_screen.dart';
import 'package:rjs/core/Util.dart';
import 'package:rjs/core/custom_dimensions.dart';
import 'package:rjs/core/utils/screen_utils/screen_utils.dart';
import 'package:rjs/Ui/Emissions/emissions_page.dart';
import 'package:rjs/Ui/palyer/song_page.dart';
import 'package:rjs/Ui/palyer/video_page.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, allowFontScaling: true);
    ScreensHelper(context);
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
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => MainScreen()));
                        },
                        child: Image.asset('assets/images/bigradio.png')),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  customText('Bienvenue sur RJS', 21, false),
                  customText('la radio 100% jeune', 21, false),
                  SizedBox(height: CustomDimensions(context).height * 0.12),
                  GestureDetector(
                      onTap: () {},
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => EmissionPage()));
                        },
                        child: customContainer(
                            CustomDimensions(context).width * 0.85,
                            CustomDimensions(context).height * 0.055,
                            20,
                            Color(0xFF4267B2),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset('assets/images/facebook.png'),
                                customText('Connexion avec mon compte facebook',
                                    12, false)
                              ],
                            )),
                      )),
                  SizedBox(
                    height: CustomDimensions(context).height * 0.03,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (ctx) => SongPage()));
                      },
                      child: customContainer(
                          CustomDimensions(context).width * 0.85,
                          CustomDimensions(context).height * 0.055,
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
                    height: CustomDimensions(context).height * 0.055,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                        return LoginPage();
                      }));
                    },
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
                      Text(
                        'Vous avez déjà un compte ?',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 13,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (ctx) {
                            return RegisterPage();
                          }));
                        },
                        child: customText('Connectez-vous', 14, true),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (ctx) => VideoPage()));
                      },
                      child: Text(
                        'Conditions d’utilisation',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                          fontSize: 11,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Partenaires',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Image.asset('assets/images/flag1.png'),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset('assets/images/flag2.png'),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset('assets/images/flag3.png'),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}

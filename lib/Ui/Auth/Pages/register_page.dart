import 'package:flutter/material.dart';
import 'package:rjs/core/Util.dart';
import 'package:rjs/core/custom_dimensions.dart';
import 'package:rjs/core/style/base_colors.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  String paymentMethod;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF0B0B0B),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: customText('S’inscrire', 26.0, true)
              ),
              Container(
                padding: EdgeInsets.only(
                  right: CustomDimensions(context).width * 0.05,
                  left: CustomDimensions(context).width * 0.05,
                  top: CustomDimensions(context).width * 0.05,
                ),
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: customText('Pays', 16, false)),
                    SizedBox(
                      height: 10,
                    ),
                    customContainer(
                        CustomDimensions(context).width,
                        CustomDimensions(context).height * 0.07,
                        12,
                        Color(0xFF222222).withOpacity(0.76),
                        DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            items: <String>['paypal'].map((String value) {
                              return new DropdownMenuItem<String>(
                                value: value,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Text(value)),
                              );
                            }).toList(),
                            onChanged: (String value) {
                              this.paymentMethod = value;
                            },
                            icon: Container(
                              margin: EdgeInsets.only(right: 20),
                              child: Transform.rotate(
                                angle: 90 * 3.14 / 180,
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                ),
                              ),
                            ),
                            value: paymentMethod,
                            dropdownColor: Color(0xFF222222).withOpacity(0.76),
                            style: TextStyle(
                              color: WhiteColor,
                              fontSize: 16,
                            ),
                          ),
                        ))
                  ],
                ),
              ),
              buildItem('Nom et prénom(s)', name),
              buildItem('Numéro de téléphone', phone),
              buildItem('Adresse email', email),
              buildItem('Mot de passe', password),
              Container(
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
                      child: customText('S’inscrire', 18, true),
                    )),
              ),
              SizedBox(
                height: CustomDimensions(context).height * 0.1,
              ),
              customText(
                  'En cliquant sur «S’inscrire», vous acceptez nos', 16, false),
              GestureDetector(
                onTap: () {

                },
                child: Text(
                  'Termes et conditions d’utilisation',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: WhiteColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline),
                ),
              ),
              SizedBox(
                height: CustomDimensions(context).height * 0.1,
              )
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
          Align(alignment: Alignment.topLeft, child: customText(s, 16, false)),
          SizedBox(
            height: 10,
          ),
          customContainer(
              CustomDimensions(context).width,
              CustomDimensions(context).height * 0.07,
              12,
              Color(0xFF222222).withOpacity(0.76),
              TextFormField(
                style: TextStyle(color: WhiteColor),
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

import 'package:flutter/material.dart';

class CardsWithMenu extends StatelessWidget {
  final String imgurl;
  final String text;

  CardsWithMenu({Key key, this.imgurl, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SingleChildScrollView(
          child: Row(
            children: [
              Container(
                  width: 151,
                  height: 151,
                  child: Stack(
                    children: [
                      Image.asset(
                        imgurl ?? 'assets/images/droit.png',
                      ),
                      Positioned(
                          bottom: 20,
                          child: Padding(
                              padding: EdgeInsets.all(8),
                              child: Image.asset('assets/images/wave2.png')))
                    ],
                  )),
              Container(
                width: 10,
              )
            ],
          ),
        ),
        Container(
          width: 151,
          child: Padding(
              padding: EdgeInsets.only(left: 5, right: 5, top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    text ?? 'La nuit du droit',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'medium',
                      color: Colors.white,
                    ),
                  ),
                  Image.asset('assets/images/more.png')
                ],
              )),
        )
      ],
    );
  }
}

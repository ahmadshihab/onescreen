

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'data_model_story.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> colList = [
    '0xffF03E3E',
    '0xff3AAD17',
    '0xff1762AD'
  ];
  int _current = 0;
  int _currentCarousel = 0;






  @override
  void initState() {


    // fillSliderImages(Data_Model_Story);
    //fillOffersImages();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final sizeAware = MediaQuery.of(context).size;


        return Scaffold(
          backgroundColor: Color(0xff0B0B0B),


          body:
            SingleChildScrollView(
              child: SafeArea(child:
    Column(
                children: [
                  Padding(padding: EdgeInsets.all(20),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/images/radio.png'),
                      Row(children: [
                        Icon(Icons.mic_rounded,color: Color(0xffCB4731),),
                        Text('Live',style: TextStyle(color: Color(0xffCB4731),fontSize: 13,fontFamily: 'medium'),)
                      ],)

                    ],
                  )
                  ),

                   Container(
                     height: 18,
                     color: Color(0xff151515),
                     child: ListView.builder(
                       shrinkWrap: true,
                         scrollDirection: Axis.horizontal,
                         itemCount: 5,
                         itemBuilder: (context,index){
                       return
                         Padding(padding: EdgeInsetsDirectional.only(end: 20),
                         child:

                             Text('#DÉBATS',style: TextStyle(
                                 fontSize: 14,
                                 color: Colors.white,
                                 fontFamily: 'medium'),)
                         );
                     }),
                   ),

                  Container(
                    height: 20,
                  ),
                   Stack(
                        children: [

                          Container(
                            height: sizeAware.height * 0.25,
                            width: sizeAware.width,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                 ),
                              child: CarouselSlider(
                                options: CarouselOptions(
                                    autoPlay: true,
                                    reverse: false,
                                    viewportFraction: 1.0,
                                    enlargeCenterPage: false,
                                    aspectRatio: 2.0,
                                    enableInfiniteScroll: false,
                                    onPageChanged: (index, reason) {
                                      setState(() {
                                        // print('index $index');
                                        _current = index;
                                      });
                                    }),
                                items: ['assets/images/retour.png','assets/images/retour.png'].map((image) {
                                  return Container(
                                    width:
                                    MediaQuery.of(context).size.width,
                                    height: 180,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image:
                                        AssetImage(image),
                                        fit: BoxFit.cover,
                                      ),
                                      color: Colors.white,
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            left: 0,
                            child: Column(
                              children: [
                                Text('Le grand retour',style: TextStyle(fontFamily: 'medium',fontSize: 23,color: Colors.white),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: ['assets/images/retour.png','assets/images/retour.png'].map((url) {
                                    int index = ['assets/images/retour.png','assets/images/retour.png'].indexOf(url);

                                    return Container(
                                      width: 5.0,
                                      height: 5.0,
                                      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.white),
                                        shape: BoxShape.circle,
                                        color: _currentCarousel == index
                                            ? Colors.white
                                            : Colors.transparent,
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),

                  Padding(padding: EdgeInsets.all( 10),
                  child: Stack(children: [
                    Image.asset('assets/images/set.png')

                  ],)
                  ),

                  Padding(padding: EdgeInsets.all( 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Actualités',style: TextStyle(fontFamily: 'semibold',fontSize: 20,color: Colors.white),),
                          Row(
                            children: [
                              Text('Voir plus',style: TextStyle(
                                fontSize: 12,fontFamily: 'Montserrat',color: Color(0xff99999F),

                              ),),
                              Container(width: 4,),
                              Icon(Icons.arrow_forward_ios,color: Color(0xff99999F),)

                            ],
                          )

                      ],)
                  ),
                Padding(padding: EdgeInsets.all( 10),
                  child:
                ListView.builder(
                    shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 3,
                      itemBuilder: (context,index){
                        return
                          Padding(padding: EdgeInsets.only(
                            bottom: 10
                          ),
                          child: Container(
                            //height: 116,
                            width: sizeAware.width,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(6)
                            ),
                            child: Column(children: [
                              Row(children: [
                                Padding(padding: EdgeInsets.all(5),
                                    child:
                                    Image.asset('assets/images/images.png')

                                ),

                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                  Container(
                                    width: 52,
                                    height: 15,
                                    decoration: BoxDecoration(
                                        color: Color(0xff0D3880),
                                        borderRadius: BorderRadius.circular(6)
                                    ),
                                    child: Center(child: Text('Culture',style: TextStyle(fontFamily: 'medium',
                                        fontSize: 8,color: Colors.white),

                                    ),),
                                  ),
                                  Container(height: 5,),
                                  Container(
                                    width: sizeAware.width*.6,
                                      child:       Text(
                                        'Une bibliothèque de Tombouctou inscrit au patrimoine mondial de l’UNESCO',
                                           style: TextStyle(fontSize: 13,fontFamily: 'semibold',fontWeight: FontWeight.bold),softWrap:true,
                                        ),
                                  )
                                  // Container(
                                  //     padding: EdgeInsets.only(left: 20,right: 20),
                                  //   child:
                                  //     Text(
                                  //       'Une bibliothèque de Tombouctou inscrit au patrimoine mondial de l’UNESCO',
                                  //       style: TextStyle(fontSize: 13,fontFamily: 'Montserrat'),softWrap:true,
                                  //     )
                                  //
                                  //
                                  // )




                                ],)
                              ],),
                        Padding(padding: EdgeInsets.all(5),
                        child:
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset('assets/images/time.png'),
                                      Container(width: 3,),
                                      Text('26 Octobre 2020',style: TextStyle(fontFamily: 'Montserrat',fontWeight: FontWeight.w300,fontSize: 10),)
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Image.asset('assets/images/share.png'),
                                      Container(width: 6,),
                                      Image.asset('assets/images/bookmark.png',),
                                      Container(width: 6,),
                                     ],
                                  )
                                ],
                              ))

                            ],),

                          ),
                          )
                          ;

                  }),

                ),

                  Padding(padding: EdgeInsets.all( 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Reportages vidéos',style: TextStyle(fontFamily: 'semibold',fontSize: 20,color: Colors.white),),
                          Row(
                            children: [
                              Text('Voir plus',style: TextStyle(
                                fontSize: 12,fontFamily: 'Montserrat',color: Color(0xff99999F),

                              ),),
                              Container(width: 4,),
                              Icon(Icons.arrow_forward_ios,color: Color(0xff99999F),)

                            ],
                          )

                        ],)
                  ),
                  Padding(padding: EdgeInsets.all( 10),
                    child:
                        Container(
                          height: 243,

                          child:
                    ListView.builder(
                        shrinkWrap: true,
                         itemCount: 3,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context,index){
                          return
                            Stack(
                              children: [

                                Image.asset('assets/images/nutrition.png'),
                                Positioned(

                                    bottom: 20,
                                    right: 0,
                                    left: 0,
                                    child:
                                Column(
                                  children: [
                                    Image.asset('assets/images/video.png'),
                                     Padding(padding: EdgeInsets.only(left: 20,right: 20,top: 15,bottom: 10),
                                    child:  Text('Une journée avec Yacouba Sawadogo,  l’homme qui a fait reculer le désert.',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Montserrat',fontWeight: FontWeight.bold,fontSize: 10),
                                    )
                                    ),
                                    Center(
                                      child: Text('20 février 2020',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Montserrat',fontWeight: FontWeight.w300,fontSize: 9),

                                      ),
                                    )

                                    
                                  ],
                                )
                                )
                              ],
                            )

                          ;

                        })),

                  ),

                  Padding(padding: EdgeInsets.all( 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Podcasts',style: TextStyle(fontFamily: 'semibold',fontSize: 20,color: Colors.white),),
                          Row(
                            children: [
                              Text('Voir plus',style: TextStyle(
                                fontSize: 12,fontFamily: 'Montserrat',color: Color(0xff99999F),

                              ),),
                              Container(width: 4,),
                              Icon(Icons.arrow_forward_ios,color: Color(0xff99999F),)

                            ],
                          )

                        ],)
                  ),
                  Padding(padding: EdgeInsets.all( 10),
                    child:
                    Container(
                        height: 130,


                        child:
                        ListView.builder(
                            shrinkWrap: true,
                            itemCount: 3,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context,index){
                              return
                              Container(
                                width: 130,
                                child:    Stack(
                                  children: [

                                    Image.asset('assets/images/podcasts.png',width: 130,),
                                    Positioned(

                                        bottom: 0,

                                        child:
                                        Padding(
                                          padding: EdgeInsets.all(16),
                                          child:
                                              Container(
                                                width: 100,
                                              child:
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Image.asset('assets/images/wave.png'),
                                              Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text('Retour aux Sources',style: TextStyle(
                                                    fontFamily: 'Montserrat',
                                                    fontSize: 6,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white
                                                  ),),
                                                  Container(height: 4,),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        height: 6,
                                                        width: 18,
                                                        decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius: BorderRadius.circular(180)
                                                        ),
                                                        child: Center(
                                                          child:  Text('08:00',style: TextStyle(
                                                              fontFamily: 'Montserrat',
                                                              fontSize: 5,
                                                              color: Colors.black
                                                          ),),
                                                        ),
                                                      ),
                                                      Container(width: 4,),

                                                      Text('Épisode 2',style: TextStyle(
                                                          fontFamily: 'medium',
                                                          fontSize: 5,
                                                          color: Colors.white
                                                      ),),
                                                    ],
                                                  ),


                                                ],
                                              ),
                                              Image.asset('assets/images/share.png',color: Colors.white,),

                                            ],
                                          )),
                                        )
                                    )
                                  ],
                                )
                              )


                              ;

                            })),

                  ),

                  Padding(padding: EdgeInsets.all( 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Programmes',style: TextStyle(fontFamily: 'semibold',fontSize: 20,color: Colors.white),),
                          Row(
                            children: [
                              Text('Voir plus',style: TextStyle(
                                fontSize: 12,fontFamily: 'Montserrat',color: Color(0xff99999F),

                              ),),
                              Container(width: 4,),
                              Icon(Icons.arrow_forward_ios,color: Color(0xff99999F),)

                            ],
                          )

                        ],)
                  ),
                  Padding(padding: EdgeInsetsDirectional.only( top: 10,bottom:10,start: 10,end: 10 ),
                    child:
                    Container(
                        height: 262,


                        child:
                        ListView.builder(
                            shrinkWrap: true,
                            itemCount: 6,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context,index){
                              return
                              Row(
                                children: [
                                  Container(
                                      width: 164,
                                      height: 262,
                                      child:    Stack(
                                        children: [

                                          Image.asset('assets/images/musical.png',width: 164,
                                            height: 262,),
                                          Positioned(

                                              bottom: 0,

                                              child:
                                              Padding(
                                                padding: EdgeInsets.all(16),
                                                child:
                                                Container(
                                                    //width: 100,
                                                    child:

                                                         Column(
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                          children: [
                                                            Text('Nos meilleurs HIT',style: TextStyle(
                                                                fontFamily: 'semibold',
                                                                fontSize: 13,
                                                                fontWeight: FontWeight.bold,
                                                                color: Colors.white
                                                            ),),
                                                            Container(height: 4,),
                                                            Text('14h00',style: TextStyle(
                                                                fontFamily: 'light',
                                                                fontSize: 28,
                                                                color: Colors.white
                                                            ),),



                                                          ],
                                                        ),
  ),
                                              )
                                          )
                                        ],
                                      )
                                  ),
                                  Container(width: 10,)
                                ],
                              )



                              ;

                            })),

                  ),

                  Padding(padding: EdgeInsets.all( 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('À ne pas manquer',style: TextStyle(fontFamily: 'semibold',fontSize: 20,color: Colors.white),),
                          Row(
                            children: [
                              Text('Voir plus',style: TextStyle(
                                fontSize: 12,fontFamily: 'Montserrat',color: Color(0xff99999F),

                              ),),
                              Container(width: 4,),
                              Icon(Icons.arrow_forward_ios,color: Color(0xff99999F),)

                            ],
                          )

                        ],)
                  ),
                  Padding(padding: EdgeInsetsDirectional.only( top: 10,bottom:10,start: 10,end: 10 ),
                    child:
                    Container(
                        height: 172,


                        child:
                        ListView.builder(
                            shrinkWrap: true,
                            itemCount: 6,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context,index){
                              return
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                          width: 151,
                                          height: 151,
                                          child:    Stack(
                                            children: [

                                              Image.asset('assets/images/droit.png',
                                              ),
                                              Positioned(

                                                  bottom: 20,

                                                  child:
                                                  Padding(
                                                      padding: EdgeInsets.all(8),
                                                      child:
                                                      Image.asset('assets/images/wave2.png')
                                                  )
                                              )
                                            ],
                                          )
                                      ),
                                      Container(width: 10,)
                                    ],
                                  ),
                                  Container(
                                    width: 151,
                                    child:
                                    Padding(padding:
                                      EdgeInsets.only(left: 5,right: 5,top: 5),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'La nuit du droit',
                                          style: TextStyle(
                                            fontSize: 12,fontFamily: 'medium',color: Colors.white,

                                          ),
                                        ),
                                        Image.asset('assets/images/more.png')
                                      ],
                                    )
                                    ),

                                  )


                                ],
                              )




                              ;

                            })),

                  ),

                  Padding(padding: EdgeInsets.all( 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Explorez',style: TextStyle(fontFamily: 'semibold',fontSize: 20,color: Colors.white),),
                          Row(
                            children: [
                              Text('Voir plus',style: TextStyle(
                                fontSize: 12,fontFamily: 'Montserrat',color: Color(0xff99999F),

                              ),),
                              Container(width: 4,),
                              Icon(Icons.arrow_forward_ios,color: Color(0xff99999F),)

                            ],
                          )

                        ],)
                  ),
                  Padding(padding: EdgeInsetsDirectional.only( top: 10,bottom:10,start: 10,end: 10 ),
                    child:
                    Container(
                        height: 84,


                        child:
                        ListView.builder(
                            shrinkWrap: true,
                            itemCount: colList.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context,index){
                              return
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Stack(
                                          children: [
                                            Container(
                                              width: 141.67,
                                              height: 84,
                                              decoration: BoxDecoration(
                                                  color: Color(int.parse(colList[index])),
                                                  borderRadius: BorderRadius.circular(6)
                                              ),

                                            ),
                                            Positioned(

                                                bottom: 25,

                                                child:
                                                Padding(
                                                    padding: EdgeInsets.all(8),
                                                    child:
                                                    Text('Actualités', style: TextStyle(
                                                      fontSize: 12,fontFamily: 'semibold',color: Colors.white,
                                                      fontWeight: FontWeight.bold

                                                    ),)
                                                )
                                            )
                                          ],
                                        )
                                        ,
                                        Container(width: 10,)
                                      ],
                                    ),



                                  ],
                                )




                              ;

                            })),

                  ),





                ],
              )),
            )
        );

  }

 }


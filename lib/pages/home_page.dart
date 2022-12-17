// ignore_for_file: prefer_const_constructors

import 'package:e_patrakar/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _itemCount = 5;
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Text('ePatrakaar',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 24,
            fontFamily: 'ElMessiri',
            color: Colors.black,
          ),),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 12, right: 15, top: 5, bottom: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Trending News',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'LibreFranklin',
                ),),
              SizedBox(height: 10.0,),
              Container(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      height: 150.0,
                      child: PageView(
                        controller: _controller,
                        scrollDirection: Axis.horizontal,
                        children: [
                          for(int i = 0; i < _itemCount; i++)
                            InkWell(
                              onTap: ()=>Navigator.pushNamed(context, MyRoutes.home_detail_page),
                              child: BoxCategory1(),)
                        ],
                      ),
                    ),
                    SmoothPageIndicator(
                      controller: _controller, count: _itemCount,
                      effect: ExpandingDotsEffect(
                        expansionFactor: 1.01,
                        dotWidth: 12,
                        dotHeight: 12,
                        spacing: 15,
                        dotColor: Colors.grey,
                        activeDotColor: Colors.blueAccent,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),

              Text('Viral Updates',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'LibreFranklin',
                ),
              ),

              SizedBox(height: 13.21),

              Container(
                child: Column(
                  children: [
                    Container(
                      height: 120.0,
                      child: ListView.builder(
                          itemCount: 5,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return InkWell(
                                child: BoxCategory2()
                            );
                          }
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              Text('Recommended Topics',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  fontFamily: 'LibreFranklin',
                ),),

              SizedBox(height: 14.0,),

              Container(
                  child: Column(
                    children: [
                      Container(
                        height: 250.0,
                        child: ListView.builder(
                          itemCount: 5,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return InkWell(child: BoxCategory3());
                          },
                        ),
                      ),
                    ],
                  )
              ),

              SizedBox(height: 35.0),

              Text('Browse Channels',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'LibreFranklin',
                ),),
              Container(
                  child: Column(
                    children: [
                      Container(
                        height: 100.0,
                        child: ListView.builder(
                          itemCount: 4,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return CircularBox();
                          },
                        ),
                      )
                    ],
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CircularBox extends StatelessWidget {
  const CircularBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      margin: EdgeInsets.only(right: 10.0),
      child: CircleAvatar(
        backgroundImage: AssetImage('images/widget_images/9.png'),
        radius: 36.0,
      ),
    );
  }
}


class BoxCategory1 extends StatelessWidget {
  const BoxCategory1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
              image: AssetImage(
                'images/widget_images/1.png'
              ),
              fit: BoxFit.fitHeight,
            ),
              Text('Aritficial Inteliigence to be used for good Gover',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'LibreFranklin',
                fontSize: 17,
                fontWeight: FontWeight.w400,
              ),
              maxLines: 1,)
            ]
          ),
        ],
      ),
    );
  }
}

class BoxCategory2 extends StatelessWidget {

  final image;

  BoxCategory2({this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 14),
      child: Container(
        child: Column(
                children: [
                  Image(
                  image: AssetImage('images/widget_images/2.png'),
                    fit: BoxFit.fitHeight,
                  ),
                  Text('Local Train',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'LibreFranklin',
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400,
                    ),
                  maxLines: 1,
                  ),
                ]
        ),
      ),
    );
  }
}


class BoxCategory3 extends StatelessWidget {
  const BoxCategory3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 12),
          child: Container(
            height: 188,
            width: 160,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  image: AssetImage(
                    'images/widget_images/6.png',
                  ),
              ),
                Text('Portrait Photography For Charity',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'LibreFranklin',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Social Work',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'LibreFranklin',
                        fontSize: 10,
                        fontWeight: FontWeight.w200,
                      ),),
                    InkWell(
                      onTap: (){},
                      splashColor: Colors.grey,
                      child: Container(
                        alignment: Alignment.center,
                        height: 25.83,
                        width: 70.11,
                        color: Colors.black,
                        child: Text('Follow+',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.0,
                        ),),
                      ),
                    )
                  ],
                )
              ]
            ),
          ),
    );
  }
}

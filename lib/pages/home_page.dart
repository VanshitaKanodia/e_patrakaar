// ignore_for_file: prefer_const_constructors

import 'package:e_patrakar/models/article_model.dart';
import 'package:e_patrakar/pages/testPage.dart';
import 'package:e_patrakar/pages/view_page.dart';
import 'package:e_patrakar/services/api.dart';
import 'package:e_patrakar/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _itemCount = 5;
  final _controller = PageController();
  List<int> data = [1, 2, 3];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Text(
          'ePatrakaar',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 24,
            fontFamily: 'ElMessiri',
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 16, right: 16, left: 16, bottom: 13),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Trending News',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'LibreFranklin',
                ),
              ),
              SizedBox(
                height: 10.31,
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      height: 165.0,
                      child: PageView(
                        controller: _controller,
                        scrollDirection: Axis.horizontal,
                        children: [
                          for (int i = 0; i < _itemCount; i++)
                            InkWell(
                              //  onTap: ()=>Navigator.pushNamed(context, MyRoutes.home_detail_page),
                              onTap: () {
                                setState(() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => TestPage()));
                                });
                              },

                              child: BoxCategory1(),
                            )
                        ],
                      ),
                    ),
                    SmoothPageIndicator(
                      controller: _controller,
                      count: _itemCount,
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
              SizedBox(height: 27.0),
              Text(
                'Viral Updates',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'LibreFranklin',
                ),
              ),
              SizedBox(height: 13.21),
              Container(
                child: Column(
                  children: [
                    Container(
                      height: 101.78,
                      child: ListView.builder(
                          itemCount: 5,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return InkWell(child: BoxCategory2());
                          }),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 28),
              Text(
                'Recommended Topics',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                  fontFamily: 'LibreFranklin',
                ),
              ),
              SizedBox(
                height: 14.0,
              ),
              Container(
                  child: Column(
                children: [
                  Container(
                    height: 281.0,
                    child: ListView.builder(
                      itemCount: 2,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return InkWell(child: BoxCategory3());
                      },
                    ),
                  ),
                ],
              )),
              SizedBox(height: 38.59),
              viewBox(),
              SizedBox(
                height: 30,
              ),
              Text(
                'Browse Channels',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'LibreFranklin',
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 8.77),
                child: Column(
                  children: [
                    Container(
                      height: 84.57,
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
              SizedBox(
                height: 31.99,
              ),
              Column(
                children: [
                  ...data.map((val) {
                    return Container(
                      width: 396.0,
                      height: 280.0,
                      child: viewBox(),
                    );
                  }),
                ],
              )
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
      // padding: EdgeInsets.all(0),
      margin: EdgeInsets.only(right: 19.9),
      child: CircleAvatar(
        backgroundImage: AssetImage(
          'images/widget_images/9.png',
        ),
        radius: 42.28,
        backgroundColor: Colors.transparent,
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
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Image(
              image: AssetImage('images/widget_images/1.png'),
              fit: BoxFit.fitHeight,
            ),
            Text(
              'Aritficial Inteliigence to be used for good Gover...',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'LibreFranklin',
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              maxLines: 1,
            )
          ]),
        ],
      ),
    );
  }
}

class BoxCategory2 extends StatefulWidget {
  @override
  State<BoxCategory2> createState() => _BoxCategory2State();
}

class _BoxCategory2State extends State<BoxCategory2> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Article>>(
        future: getArticle(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return Container(
              margin: EdgeInsets.only(right: 19.9),
              child: Container(
                child: Column(children: [
                  Image(
                    image: AssetImage('images/widget_images/2.png'),
                    fit: BoxFit.fitHeight,
                    height: 84.57,
                    width: 84.57,
                  ),
                  Text(
                    snapshot.data[0].title,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'LibreFranklin',
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400,
                    ),
                    maxLines: 1,
                  ),
                ]),
              ),
            );
          }
          else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          return Center(child: SpinKitThreeInOut(color: Colors.black54,));
        });
  }
}


class BoxCategory3 extends StatelessWidget {
  const BoxCategory3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20.62),
      child: Container(
        height: 188,
        width: 189,
        margin: const EdgeInsets.only(bottom: 5),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 6.0,
            ),
          ],
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Image(
            height: 188,
            width: 189,
            image: AssetImage(
              'images/widget_images/6.png',
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            'Portrait Photography For Charity',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'LibreFranklin',
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 43,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Social Work',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'LibreFranklin',
                  fontSize: 10,
                  fontWeight: FontWeight.w200,
                ),
              ),
              SizedBox(
                width: 61.83,
              ),
              InkWell(
                onTap: () {},
                splashColor: Colors.grey,
                child: Container(
                  alignment: Alignment.center,
                  height: 25.83,
                  width: 70.11,
                  color: Colors.black,
                  child: Text(
                    'Follow+',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10.0,
                    ),
                  ),
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}

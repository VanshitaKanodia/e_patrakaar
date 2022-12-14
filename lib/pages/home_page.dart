// ignore_for_file: prefer_const_constructors

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
        title: const Text('E-PATRAKAAR',
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
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Trending News',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w500,
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
                            BoxCategory1(),
                        ],
                      ),
                    ),
                    SizedBox(height: 13.0,),
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
              SizedBox(height: 27.0),

              Text('Viral Updates',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'LibreFranklin',
                ),),

              SizedBox(height: 13.21),

              Container(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      height: 87.0,
                      child: ListView.builder(
                          itemCount: 5,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return BoxCategory2();
                          }
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(height: 20),

              Text('Recommended Topics',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                  fontFamily: 'LibreFranklin',
                ),),

              SizedBox(height: 14.0,),

              Container(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 5.0),
                        height: 266.0,
                        child: ListView.builder(
                          itemCount: 5,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return BoxCategory3();
                          },
                        ),
                      ),
                    ],
                  )
              ),

              SizedBox(height: 20.0),

              Text('Browse Channels',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'LibreFranklin',
                ),),
              SizedBox(height: 8.77,),
              Container(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 5.0),
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
                  )
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
      margin: EdgeInsets.only(right: 10.0),
      child: Stack(
        children: [
          ClipRRect(
            child: Text(""),
            // Image.asset(name),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            height: 84,
            width: 84,
            decoration: BoxDecoration(
              color: Colors.black38,
              borderRadius: BorderRadius.circular(100.0),
            ),
          )
        ],
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
              Text('Text here',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'LibreFranklin',
                fontSize: 17,
                fontWeight: FontWeight.w400,
              ),)
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
      child: Stack(
          children: [
            Column(
              children: [
                Image(
                image: AssetImage('images/widget_images/2.png'),
              ),
                Text('Text here',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'LibreFranklin',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),)
              ]
            ),
          ]
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
      margin: EdgeInsets.only(right: 16),
      child: Stack(
        children: [
          Container(
            height: 188,
            width: 189,
            child: Column(
              children: [
                Image(
                  image: AssetImage(
                    'images/widget_images/6.png',
                  ),
              ),
                Text('Text here',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'LibreFranklin',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),),
                SizedBox(
                  height: 43,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Text here',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'LibreFranklin',
                      fontSize: 10,
                      fontWeight: FontWeight.w200,
                    ),),
                  // ElevatedButton(onPressed: (){},
                  //     child: Text('Follow')
                  // )
                ],
                )
              ]
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:e_patrakar/utils/card_state.dart';

import '../utils/bottom_bar.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _currentIndex = 0;
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
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Trending News',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                  ),),
                SizedBox(height: 20.0,),
                Container(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        height: 165.0,
                        child: ListView.builder(
                          //length of items used
                            itemCount: 4,
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return BoxCategory1();
                            }
                        ),
                      )
                    ],
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: map<Widget>(cardList, (index, url) {
                    return Container(
                      width: 10.0,
                      height: 10.0,
                      margin: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _currentIndex == index
                            ? Colors.blueAccent
                            : Colors.grey,
                      ),
                    );
                  }),
                ),
                SizedBox(height: 15.0),

                Text('Viral Updates',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                  ),),

                SizedBox(height: 10.0),

                Container(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          height: 70.0,
                          child: ListView.builder(
                              itemCount: 10,
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
                  fontSize: 18,
                ),),

                SizedBox(height: 10.0,),

                Container(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        height: 200.0,
                        child: ListView.builder(
                          itemCount: 5,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index)
                          {
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
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),),

                Container(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          height: 100.0,
                          child: ListView.builder(
                            itemCount: 4,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index)
                            {
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

        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15)),
          ),
          child: BottomBar(),
        )
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
            height: 80,
            width: 85,
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
      margin: EdgeInsets.only(right: 16),
      child: Stack(
        children: [
          ClipRRect(
            child: Text('Image'),
            // Image.asset(''),
          ),
          Container(
            width: 360.0,
            height: 165.0,
            decoration: BoxDecoration(
              color: Colors.black38,
            ),
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
            ClipRRect(
              child:
                Text("Image")
              // Image.asset('',
              //   height: 30.0,
              //   width: 30.0,
              //   fit: BoxFit.cover,),
            ),
            Container(
              width: 113.0,
              height: 68.0,
              decoration: BoxDecoration(
                color: Colors.black38,
              ),
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
          ClipRRect(
            child: Text("image"),
            // Image.asset(name),
          ),
          Container(
            width: 170,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.black38,
            ),
          ),
        ],
      ),
    );
  }
}

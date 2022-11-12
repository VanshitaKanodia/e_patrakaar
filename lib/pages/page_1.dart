import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_patrakar/utils/card_state.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: Text('E-Patrakaar',
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

                CarouselSlider(
                    options: CarouselOptions(
                      height: 200.0,
                      autoPlay: false,
                      aspectRatio: 16/9,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _currentIndex = index;
                        });
                      },
                    ),
                  items:
                    cardList.map((card)
                      {
                        return Container(
                          height: MediaQuery.of(context).size.height * 30.0,
                          width: MediaQuery.of(context).size.width,
                          child: Card(
                            color: Colors.black38,
                            child: card,
                          ),
                        );
                    }).toList(),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: map<Widget>(cardList, (index, url) {
                    return Container(
                      width: 10.0,
                      height: 10.0,
                      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _currentIndex == index ? Colors.blueAccent : Colors.grey,
                      ),
                    );
                  }),
                ),
                SizedBox(height:20.0),
                
                Text('Viral Updates',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                ),),

                Container(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        height: 70.0,
                        child: ListView.builder(
                            itemCount: 10,
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemBuilder: (context, index)
                            {
                              return CategoryTile();
                            }
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

class CategoryTile extends StatelessWidget {

   final image;
  CategoryTile({this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(right: 16),
        child: Stack(
        children: [
        ClipRRect(
        borderRadius: BorderRadius.circular(6),
          child:
            Image.asset('',
          height: 30.0,
          width: 30.0,
          fit: BoxFit.cover,),
        ),
          Container(
            width: 130.0,
              height: 68.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Colors.black38,
            ),
            child: Text("Image",
            style: TextStyle(
              color: Colors.white,
            ),),
          )
      ]
        ),

      // ),
    );
  }
}


class BottomBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0.0,
      // selectedItemColor: Colors.white,
      items: [
        BottomNavigationBarItem(
            backgroundColor: Colors.transparent,
            icon: Icon(Icons.home,
              size: 30.0,),
            label: 'no'),

        BottomNavigationBarItem(
            backgroundColor: Colors.transparent,
            icon: Icon(Icons.notifications,
              size: 30.0,),
            label: 'no'),

        BottomNavigationBarItem(
            backgroundColor: Colors.transparent,
            icon: Icon(Icons.search,
              size: 30.0,),
            label: 'no'),

        BottomNavigationBarItem(
            backgroundColor: Colors.transparent,
            icon: Icon(Icons.star_border,
              size: 30.0,),
            label: 'no'),

        BottomNavigationBarItem(
            backgroundColor: Colors.transparent,
            icon: Icon(Icons.person_outline,
              size: 30.0,),
            label: 'Profile'),
      ],
    );
  }
}

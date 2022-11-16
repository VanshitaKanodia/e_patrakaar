import 'package:e_patrakar/utils/routes.dart';
import 'package:flutter/material.dart';


class BottomBar extends StatelessWidget {

  int _currentIndex=0;
  // BottomBar({required this.index});

  // final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black38,
        currentIndex: _currentIndex,
        // backgroundColor: Colors.black,
        // type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              backgroundColor: Colors.transparent,
              icon: Container(
                child: IconButton(
                  onPressed: (){
                    Navigator.pushNamed(context, MyRoutes.home_page);
                  },
                  icon: Icon(Icons.home),
                ),
              ),
          label: 'Home',
            ),

          BottomNavigationBarItem(
              backgroundColor: Colors.transparent,
              icon: Icon(Icons.notifications,
                size: 30.0,),
              label: 'Notification'),

          BottomNavigationBarItem(
              backgroundColor: Colors.transparent,
              icon: Icon(Icons.search,
                size: 30.0,),
              label: 'Search'),

          BottomNavigationBarItem(
              backgroundColor: Colors.transparent,
              icon: Icon(Icons.star_border,
                size: 30.0,),
              label: 'Star'),

          BottomNavigationBarItem(
              backgroundColor: Colors.transparent,
              icon: Icon(Icons.person_outline,
                size: 30.0,),
              label: 'Profile'),
        ],
        // onTap: (index){
        //   setState(() {
        //     _currentIndex = index;
        //   });
        // },
      ),
    );
  }
}

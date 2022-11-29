// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_patrakar/pages/home_page.dart';
import 'package:e_patrakar/pages/notification_page.dart';
import 'package:e_patrakar/pages/search_page.dart';
import 'package:e_patrakar/pages/view_page.dart';
import 'package:e_patrakar/utils/routes.dart';
import 'package:flutter/material.dart';


class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex=0;
   var tabs=[HomePage(),NotificationPage(),SearchPage(),Viewpage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: tabs[_currentIndex]),
      bottomNavigationBar: BottomNavigationBar(items: [
            BottomNavigationBarItem(
            icon: Icon(Icons.home,
            size:30.0
            ),
            backgroundColor: Colors.black,
            label:"Home"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications,
              size:30.0
              ),
              backgroundColor: Colors.black,
              label:"Notification"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search,
              size:30.0
              ),
              backgroundColor: Colors.black,
              label:"Search"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star_border,
              size:30.0
              ),
              backgroundColor: Colors.black,
              label:"Star"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person,
              size:30.0
              ),
              backgroundColor: Colors.black,
              label:"Profile"
            ),
          ],
          fixedColor: Colors.white,
          unselectedItemColor: Colors.orange,
          currentIndex: _currentIndex,

          onTap: (setValue){
            setState((){
              _currentIndex=setValue;
            });
          },
          ),
    );
  }
}
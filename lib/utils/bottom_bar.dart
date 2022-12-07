// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:e_patrakar/pages/home_page.dart';
import 'package:e_patrakar/pages/view_page.dart';
import 'package:e_patrakar/pages/search_page.dart';
import 'package:flutter/material.dart';

import '../pages/profile.dart';
import '../pages/star_page.dart';


class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex=0;
   var tabs=[HomePage(),ViewPage(),SearchPage(),StarPage(),Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: tabs[_currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        iconSize: 24,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
            BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            backgroundColor: Colors.black,
            label: '',
            activeIcon: ImageIcon(
                AssetImage('images/icons/home filled.png',),
            ),
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('images/icons/broadcast.png',)
              ),
              backgroundColor: Colors.black,
              label:"",
              activeIcon: ImageIcon(
                AssetImage('images/icons/broadcast filled.png'),
              )
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('images/icons/search.png')),
              backgroundColor: Colors.black,
              label:""
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('images/icons/fav.png')),
              backgroundColor: Colors.black,
              label:"",
              activeIcon: ImageIcon(
                AssetImage('images/icons/fav filled.png'),
              )
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('images/icons/my acc.png'),
              ),
              backgroundColor: Colors.black,
              label:"",
              activeIcon: ImageIcon(
                  AssetImage('images/icons/my account filled.png')
              ),
            ),
          ],
          fixedColor: Colors.white,
          unselectedItemColor: Colors.white,
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,

          onTap: (setValue){
            setState((){
              _currentIndex=setValue;
            });
          },
          ),
    );
  }
}
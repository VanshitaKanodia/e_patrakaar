// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Profile extends StatefulWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  List<int> data = [1, 2, 3, 4, 5];
  final _controllable = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Username',
            style: TextStyle(
              fontFamily: 'ElMessiri',
              fontWeight: FontWeight.w700,
              fontSize: 24,
              color: Colors.black,
            ),),
          actions: [
            IconButton(onPressed: () {},
              icon: ImageIcon(
                AssetImage('images/icons/hamburger icon.png',),
                color: Colors.black,),
            ),
          ],
        ),
        body: Container(
            margin: EdgeInsets.only(top: 20.0),
            padding: EdgeInsets.all(10.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10.0),
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            color: Colors.grey
                        ),

                      ),
                      SizedBox(
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10,),
                          Text("Username",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          Text("email ID",
                            style: TextStyle(fontSize: 15.0),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("Edit Info"),
                            style: ElevatedButton.styleFrom(
                              shape: StadiumBorder(),
                              textStyle: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0,),
                  Container(
                    margin: EdgeInsets.only(top: 40.0, bottom: 40.0),
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    height: 1,
                    color: Colors.grey[600],
                  ),
                  Text('Saved',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),),
                  Container(
                    margin: EdgeInsets.only(left: 4),
                    width: 40,
                    height: 1,
                    color: Colors.grey[600],
                  ),
                  SingleChildScrollView(
                      controller: _controllable,
                      scrollDirection: Axis.vertical,
                      child: ListView.builder(
                          itemCount: 5,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index) {
                            return Card(
                                color: Colors.white,
                                child: Column(
                                    children: [
                                      Row(
                                          crossAxisAlignment: CrossAxisAlignment
                                              .center,
                                          children: [
                                            Container(
                                              padding: EdgeInsets.all(10.0),
                                              margin: EdgeInsets.all(10.0),
                                              height: 68.0,
                                              width: 70.0,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.rectangle,
                                                color: Colors.grey,
                                              ),
                                            ),
                                            SizedBox(width: 15,),
                                            Column(
                                              mainAxisAlignment: MainAxisAlignment
                                                  .spaceEvenly,
                                              crossAxisAlignment: CrossAxisAlignment
                                                  .start,
                                              children: [
                                                Text('Add text here',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                  ),),
                                                SizedBox(height: 10.0,),
                                                Text('Add subtitle here',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w200,
                                                    fontSize: 10,
                                                  ),)
                                              ],
                                            )
                                          ]
                                      ),
                                    ]
                                )
                            );
                          }
                      )
                  )
                ]
            )
        ),
      ),
    );
  }
}
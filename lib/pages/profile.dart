// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'dart:ui';
import 'package:e_patrakar/pages/EditProfile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Profile extends StatefulWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  List<int> data = [1, 2, 3, 4, 5];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: Text('Username',
            style: TextStyle(
              fontFamily: 'ElMessiri',
              fontWeight: FontWeight.w700,
              fontSize: 24,
              color: Colors.black,
            ),),
          actions: [
            IconButton(
              onPressed: () {
                showModalBottomSheet(
                    useRootNavigator: true,
                    backgroundColor: Colors.grey[900],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    context: context,
                    builder: (builder) {
                      return Container(
                        margin: EdgeInsets.all(5.0),
                        // height: 318.0,
                        padding: EdgeInsets.only(left: 46, top: 43.59, bottom: 19),
                        child: Column(children: [
                          Row(children: [
                            ImageIcon(
                              AssetImage('images/icons/your activity.png'),
                              color: Colors.white,
                              size: 29,),
                            SizedBox(
                              width: 22.0,
                            ),
                            Text("Your Activity",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17.0,
                                    fontFamily: 'Librefranklin',
                                    fontWeight: FontWeight.w400)),
                          ],),
                          SizedBox(
                            height: 23.0,
                          ),
                          Container(
                            child: Row(children: [
                              ImageIcon(AssetImage('images/icons/archive.png'),
                                color: Colors.white,
                                size: 29,),
                              SizedBox(
                                width: 22.0,
                              ),
                              Text("Archive",
                                  style: TextStyle(
                                      fontFamily: 'Librefranklin',
                                      color: Colors.white, fontSize: 17.0,
                                      fontWeight: FontWeight.w400))
                            ],),
                          ),
                          SizedBox(
                            height: 23.0,
                          ),
                          Row(children: [
                            ImageIcon(
                              AssetImage('images/icons/privacy policy.png'),
                              color: Colors.white,
                              size: 29,),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text("Privacy Policy",
                                style: TextStyle(
                                    fontFamily: 'Librefranklin',
                                    color: Colors.white, fontSize: 17.0,
                                    fontWeight: FontWeight.w400))
                          ],),
                          SizedBox(
                            height: 23.0,
                          ),
                          Row(children: [
                            ImageIcon(AssetImage('images/icons/help.png'),
                              color: Colors.white,
                              size: 29,),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text("Help",
                                style: TextStyle(
                                    fontFamily: 'Librefranklin',
                                    color: Colors.white, fontSize: 17.0,
                                    fontWeight: FontWeight.w400))
                          ],),
                          SizedBox(
                            height: 23.0,
                          ),
                          Row(children: [
                            ImageIcon(AssetImage('images/icons/theme.png'),
                              color: Colors.white,
                              size: 29,),
                            SizedBox(
                              width: 23.0,
                            ),
                            Text("Theme",
                                style: TextStyle(
                                    fontFamily: 'Librefranklin',
                                    color: Colors.white, fontSize: 17.0,
                                    fontWeight: FontWeight.w400))
                          ],),
                          SizedBox(
                            height: 23.0,
                          ),
                          Row(children: [
                            ImageIcon(AssetImage('images/icons/settings.png'),
                              color: Colors.white,
                              size: 29,),
                            SizedBox(
                              width: 23.0,
                            ),
                            Text("Settings",
                                style: TextStyle(
                                  color: Colors.white, fontSize: 17.0,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'LibreFranklin',))
                          ],),
                        ],
                        ),
                      );
                    }
                );
              },
              icon: ImageIcon(
                AssetImage('images/icons/hamburger.png',),
                color: Colors.black,),
            ),
          ],
        ),
        body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 24.05, top: 10),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 50.44,
                          child: Image(
                            image: AssetImage('images/widget_images/47.png'),
                          ),
                        ),
                        SizedBox(
                          width: 40.96,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10,),
                            Text("Username",
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontFamily: 'LibreFranklin',
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: 2,),
                            Text("email ID",
                              style: TextStyle(
                                  fontSize: 12.0,
                                  fontFamily: 'Librefranklin',
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                            SizedBox(height: 24,),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => EditProfile()));
                              },
                              child: Container(
                                height: 25,
                                  width: 82,
                                  child: Text("Edit Info"),
                              alignment: Alignment.center,),
                              style: ElevatedButton.styleFrom(
                                shape: StadiumBorder(),
                                textStyle: TextStyle(color: Colors.white),
                                primary: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // SizedBox(height: 10.0,),
                  Container(
                    padding: EdgeInsets.only(top: 57.9, bottom: 61.0, left: 27, right: 21),
                    width: 379,
                    child: Divider(
                      height: 1,
                      thickness: 1,
                      color: Color(0xFFD7D7D7),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 24),
                    child: Text('Saved',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 26),
                    width: 58,
                    height: 1,
                    color: Color(0xFF000000),
                  ),
                  SizedBox(height: 24.69,),
                  Flexible(
                      child: ListView.builder(
                          itemCount: 4,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index) {
                            return Card(
                                color: Colors.transparent,
                                elevation: 0.0,
                                child: Container(
                                  padding: EdgeInsets.only(left: 16.89, bottom: 23.89),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 81.22,
                                          height: 81.22,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                'images/widget_images/48.png',
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 42.89),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('Add text here',
                                                style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: 'Librefranklin',
                                                ),),
                                              SizedBox(height: 40.0,),
                                              Text('Add subtitle here',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w200,
                                                  fontSize: 10,
                                                  fontFamily: 'Librefranklin',
                                                ),)
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                )
                            );
                          }
                      )
                  )
                ]
            ),
      ),
    );
  }
}
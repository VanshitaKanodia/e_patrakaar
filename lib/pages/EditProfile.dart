// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({ Key? key }) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: Text('Edit Info',
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
                  useRootNavigator:true,
                  backgroundColor: Colors.grey[900],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  context:context,
                  builder:(builder){
                    return Container(
                      height:270.0,
                      padding: EdgeInsets.all(20.0),
                      child: Column(children: [
                        Row(children: [
                          Icon(Icons.access_time_outlined,color:Colors.white,size:25.0),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text("Your Activity",
                          style:TextStyle(color:Colors.white,fontSize: 17.0))
                        ],),
                        SizedBox(
                          height:15.0,
                        ),
                        Container(
                          child: Row(children: [
                            Icon(Icons.archive_outlined,color:Colors.white,size:25.0),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text("Archive",
                            style:TextStyle(color:Colors.white,fontSize: 17.0))
                          ],),
                        ),
                        SizedBox(
                          height:15.0,
                        ),
                        Row(children: [
                          Icon(Icons.privacy_tip_outlined,color:Colors.white,size:25.0),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text("Privacy Policy",
                          style:TextStyle(color:Colors.white,fontSize: 17.0))
                        ],),
                        SizedBox(
                          height:15.0,
                        ),
                        Row(children: [
                          Icon(Icons.help_outline,color:Colors.white,size:25.0),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text("help",
                          style:TextStyle(color:Colors.white,fontSize: 17.0))
                        ],),
                        SizedBox(
                          height:15.0,
                        ),
                        Row(children: [
                          Icon(Icons.dark_mode_rounded,color:Colors.white,size:25.0),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text("Theme",
                          style:TextStyle(color:Colors.white,fontSize: 17.0))
                        ],),
                        SizedBox(
                          height:15.0,
                        ),
                        Row(children: [
                          Icon(Icons.settings_outlined,color:Colors.white,size:25.0),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text("Settings",
                          style:TextStyle(color:Colors.white,fontSize: 17.0))
                        ],)
                      ]),
                    );
                  }
                );
            },
              icon: ImageIcon(
                AssetImage('images/icons/hamburger icon.png',),
                color: Colors.black,),
            ),
          ],
        ),

    );
  }
}
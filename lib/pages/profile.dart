// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'dart:ui';

import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child:Column(
            children: [
              Container(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.menu,
                    size:30.0
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height/90,
              ),
              Row(
                children: [
                  Container(
                    height:85,
                    width:85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color:Colors.grey
                    ),

                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width/30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("arjun",
                      style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),
                      ),
                      Text("arjuntiwari754@gmail.com",
                      style: TextStyle(fontSize: 15.0),
                      ),
                      ElevatedButton(onPressed: (){}, 
                      child: Text("Edit Profile"),
                      style:ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        backgroundColor: Colors.black,
                        textStyle: TextStyle(color: Colors.white)
                      )
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height:MediaQuery.of(context).size.height/20,
              ),
              Container(
                width:MediaQuery.of(context).size.width,
                height: 2,
                color: Colors.grey[600],
              ),
            ],
          )  
        )
      ),
    );
  }
}
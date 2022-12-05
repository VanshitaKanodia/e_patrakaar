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
                height: 1,
                color: Colors.grey[500],
              ),
              SizedBox(
                height:MediaQuery.of(context).size.height/20,
              ),
              Container(
                alignment: Alignment.topLeft,
                child:Text("Saved",
                style:TextStyle(
                  shadows: [
                    Shadow(
                      color:Colors.black,
                      offset:Offset(0,-5)
                    )
                  ],
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color:Colors.transparent,
                  decoration:TextDecoration.underline,
                  decorationThickness: 3.0,
                  decorationColor: Colors.black
                ))
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height/20,
              ),
              Container(
                color: Colors.red,
                height: MediaQuery.of(context).size.height,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 5.0),
                          height: 100.0,
                          child: ListView.builder(
                            itemCount: 4,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemBuilder: (context, index)
                            {
                              return Rect();
                            },
                          ),
                        ),
                      ],
                    ),
              ),
            ],
          )  
        )
      ),
    );
  }
}

class Rect extends StatelessWidget {
  const Rect({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10.0),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height:40,
            width:30,
            color:Colors.grey
          ),
          SizedBox(
            height:20.0
          )

      ],)
    );
  }
}

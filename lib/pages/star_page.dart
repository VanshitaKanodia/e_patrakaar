// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';


class StarPage extends StatefulWidget {
  const StarPage({Key? key}) : super(key: key);

  @override
  State<StarPage> createState() => _StarPageState();
}

class _StarPageState extends State<StarPage> {
  List<int> data = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14,];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.white,
            title: Text(
              'ePatrakaar',
              style: TextStyle(
                fontFamily: 'ElMessiri',
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20.0),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Text('Notifications',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),),
                  )
                ],
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Column(
                children: [
                  ...data.map((val) {
                    return Card(
                        color: Colors.white,
                        child: Column(
                            children: [
                              Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(10.0),
                                      margin: EdgeInsets.all(10.0),
                                      height: 55.0,
                                      width: 82.0,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment: CrossAxisAlignment.start,
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
                  })
                ],
              ),
            ),
          ),
        )
    );
  }
}

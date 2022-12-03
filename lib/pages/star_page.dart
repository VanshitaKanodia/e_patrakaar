// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';


class StarPage extends StatefulWidget {
  const StarPage({Key? key}) : super(key: key);

  @override
  State<StarPage> createState() => _StarPageState();
}

class _StarPageState extends State<StarPage> {
  List<int> data = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text(
              'ePatrakaar',
              style: TextStyle(
                fontFamily: 'ElMessiri',
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(40.0),
              child: Row(
                children:  [
                  Text('Notifications',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),)
                ],
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ...data.map((val)
                        {
                          return Container(
                            height: 120,
                              width: 410,
                              child: Card(
                            color: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,

                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black12,
                              ),
                            )

                          ));
                        }),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
    );
  }
}

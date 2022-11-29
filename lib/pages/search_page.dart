// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';


class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

List<int> data = [1,2,3,4];
class _SearchPageState extends State<SearchPage> {

  String text = "View more";
  bool expandable = false;

  String get appText => "View less";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          title: Text('ePatrakaar',
            style: TextStyle(
              fontFamily: 'ElMessiri',
              fontWeight: FontWeight.w700,
              fontSize: 24,
              color: Colors.white,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 20.0),
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                TextFormField(
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    labelText: 'Search news',
                    labelStyle: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                    fillColor: Colors.grey,
                    border: InputBorder.none,
                    filled: true,
                    suffixIcon: Icon(Icons.search,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                ),
                SizedBox(height: 10.0,),
                Container(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          height: 100.0,
                          child: ListView.builder(
                            itemCount: 4,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index)
                            {
                              return CityWidget();
                            },
                          ),
                        )
                      ],
                    )
                ),
                //SizedBox(height: 5.0,),
                Container(
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ExpandIcon(
                       isExpanded: expandable,
                             onPressed: (bool expanded) {
                                 setState(() {
                                  expandable = !expanded;
                               });
                             },
                           ),
                      Text(!expandable ? "View more" : " View less"),
                    ],
                  ),
                ),
                //SizedBox(height:5.0),
                !expandable?Container():Container(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          height: 100.0,
                          child: ListView.builder(
                            itemCount: 4,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index)
                            {
                              return CityWidget();
                            },
                          ),
                        )
                      ],
                    )
                ),
                // Container(
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: [
                //       Column(
                //           children: [
                //             ExpandIcon(
                //               isExpanded: expandable,
                //               onPressed: (bool expanded) {
                //                 setState(() {
                //                   CityWidget();
                //                   expandable = !expanded;
                //                 });
                //               },
                //             ),
                //             Text(!expandable ? "View more" : " View less"),
                //           ],
                //         ),
                //       if(expandable)
                //         Row(
                //           children: [
                //             CityWidget(),
                //           ],
                //         )
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CityWidget extends StatelessWidget {
  const CityWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...data.map((val) {
          return Container(
            margin: EdgeInsets.only(right: 10.0),
            child: Stack(
              children: [
                ClipRRect(
                  child: Text(''),
                  // child: Image(
                  //   // image: AssetImage(''),
                  // ),
                  // Image.asset(name),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  height: 80,
                  width: 85,
                  decoration: BoxDecoration(
                    color: Colors.black38,
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                )
              ],
            ),
          );
        }),
      ],
    );
  }
}

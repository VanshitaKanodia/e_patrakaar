import 'package:flutter/material.dart';

import 'home_page.dart';


class ViewPage extends StatefulWidget {
  const ViewPage({Key? key}) : super(key: key);

  @override
  State<ViewPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> with SingleTickerProviderStateMixin {
  final List<Tab> _tabList = [
    Tab(child: Text("Sports",
      style: TextStyle(
        fontSize: 17,
        fontFamily: 'LibreFranklin',
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),)),
    Tab(child: Text("Health",
        style: TextStyle(
          fontSize: 17,
          fontFamily: 'LibreFranklin',
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ))),
    Tab(child: Text("Entertainment",
        style: TextStyle(
          fontSize: 17,
          fontFamily: 'LibreFranklin',
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ))),
    Tab(child: Text("Science",
        style: TextStyle(
          fontSize: 17,
          fontFamily: 'LibreFranklin',
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ))),
    Tab(child: Text("Technology",
        style: TextStyle(
          fontSize: 17,
          fontFamily: 'LibreFranklin',
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ))),
  ];
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabList.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabList.length,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 110.0,
            backgroundColor: Colors.transparent,
            title: Text(
              'E-PATRAKAAR',
              style: TextStyle(
                fontFamily: 'ElMessiri',
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20.0),
              child: TabBar(
                indicatorColor: Colors.black,
                isScrollable: true,
                labelColor: Colors.black,
                controller: _tabController,
                tabs: _tabList,
              ),
            ),
          ),
          body: TabBarView(
            controller: _tabController,
            children: [
              //Sports page
              Padding(
                padding: EdgeInsets.all(0.0),
                child: Expanded(
                    child: sportsWidget()
                ),
              ),

              //health page
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: cardWidget(),
                )
              ),

              //Entertainment page
              Padding(
                padding: EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: cardWidget(),
                )
              ),

              //Science page
              Padding(
                padding: EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: cardWidget(),
                )
              ),

              //Technology page
              Padding(
                padding: EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: cardWidget(),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}


List<int> data = [1, 2, 3, 4, 5];
List<int> view = [1, 2, 3, 4];

class sportsWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...data.map((val) {
                    return Container(
                      margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      width: 398.0,
                      height: 141.41,
                      decoration: BoxDecoration(
                        color: Colors.black38,
                      ),
                    );
                  }),
                  SizedBox(height: 10.0,),
                  Text('Top News',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),),
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
                              return CircularBox();
                            },
                          ),
                        )
                      ],
                    )
                ),
                  SizedBox(height: 20.0,),
                  Text('Recommended Teams',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),),
                  SizedBox(height: 10.0,),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: 200.0,
                      child: ListView.builder(
                        //length of items used
                          itemCount: 6,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Container(
                                margin: EdgeInsets.only(right: 16),
                                child: Stack(
                                    children: [
                                      Container(
                                        width: 200,
                                        decoration: BoxDecoration(
                                          color: Colors.black38,
                                        ),
                                      )
                                    ]
                                )
                            );
                          }
                      )
                  )
                ]
            ),
          ],
        ),
      ),
    );
  }
}


class cardWidget extends StatelessWidget {
  const cardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ...data.map((val) {
                      return Container(
                        margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                        width: 398.0,
                        height: 140.0,
                        decoration: BoxDecoration(
                          color: Colors.black38,
                        ),
                      );
                    }),
                  ]
              ),
              Text('Latest Technology',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'LibreFranklin',
                ),),
              SizedBox(height: 10.0,),
              Column(
                children: [
                  ...data.map((val) {
                    return Card(
                      color: Colors.black12,
                      elevation: 0.0,
                      margin: EdgeInsets.only(bottom: 20.0),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              width: 120.0,
                              height: 120.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    'images/icons/home outline.png',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(8.0),

                              ),
                            ),
                            SizedBox(width: 5.0),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Title here",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                    ),),
                                  SizedBox(height: 5.0,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Icon(Icons.add),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }
                  )
                ],
              )
            ]
        )
    );
  }
}


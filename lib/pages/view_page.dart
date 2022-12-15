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
            elevation: 0.0,
            toolbarHeight: 80.0,
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
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...data.map((val) {
                    return Container(
                      width: 398.0,
                      height: 220.0,
                      child: viewBox(),
                    );
                  }),
                  Text('Top Five',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),),
                  Container(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            height: 100.0,
                            child: ListView.builder(
                              itemCount: 5,
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
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
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      height: 270.0,
                      child: ListView.builder(
                        //length of items used
                          itemCount: 6,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return BoxCategory3();
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

class viewBox extends StatelessWidget {
  const viewBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: AssetImage(
                'images/widget_images/16.png'
            ),
            fit: BoxFit.fitHeight,
          ),
          Text(
            'Aritficial Inteliigence to be used for good Gover',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'LibreFranklin',
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
            maxLines: 2,),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ImageIcon(
                  AssetImage('images/icons/three dots.png'))
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 15.0, bottom: 30.0),
            width: 330,
            child: Divider(
              height: 1,
              thickness: 1,
              color: Colors.grey[500],
            ),
          ),
        ]
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
                      return viewBox();
                    }),
                  ]
              ),
              Text('Latest Technology',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'LibreFranklin',
                ),),
              Column(
                children: [
                  ...data.map((val) {
                    return Card(
                      color: Colors.transparent,
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
                                    'images/widget_images/7.png',
                                  ),
                                ),

                              ),
                            ),
                            SizedBox(width: 5.0),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Beaumont hospitals adding more bots",
                                    style: TextStyle(
                                      fontSize: 17.0,
                                    ),
                                  maxLines: 2,
                                  ),
                                  SizedBox(height: 5.0,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      ImageIcon(AssetImage('images/icons/three dots.png')),
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


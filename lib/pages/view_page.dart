import 'package:flutter/material.dart';



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
    Tab(child: Text("Politics",
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
    Tab(child: Text("Science",
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
                padding: EdgeInsets.only(top: 45.2),
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


List<int> data = [1, 2];
List<int> view = [1, 2, 3, 4];

class sportsWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(right: 16, left: 16, bottom: 35.24),
        child:
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...data.map((val) {
                    return Container(
                      width: 398.0,
                      height: 280.0,
                      child: viewBox(),
                    );
                  }),
                  SizedBox(height: 38,),
                  Text('Top Five',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w300,
                    ),),
                  Container(
                    margin: EdgeInsets.only(top: 9),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Pro Kabaddi',
                              style: TextStyle(
                                fontFamily: 'LibreFranklin',
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                              ),),
                              for(int i=1;i<=5;i++)
                                Row(
                                  children: [
                                    Text('$i'),
                                    Container(
                                      padding: EdgeInsets.only(bottom: 4.79),
                                      child: Image(
                                        height: 41.94,
                                          width: 41.94,
                                          image: AssetImage(
                                        'images/widget_images/18.png',
                                      )),
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Dabang Delhi',
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'LibreFranklin',
                                            color: Colors.black,
                                          ),),
                                        Text('India',
                                        style: TextStyle(
                                          fontFamily: 'Librefranklin',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 9,
                                          color: Color(0xFF999595),
                                        ),)
                                      ],
                                    ),
                                  ],
                                ),
                            ],
                          ),
                          SizedBox(width: 81,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('NBA',
                                style: TextStyle(
                                  fontFamily: 'LibreFranklin',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                ),),
                              for(int i=1;i<=5;i++)
                                Row(
                                  children: [
                                    Text('$i'),
                                    Container(
                                      padding: EdgeInsets.only(bottom: 4.79),
                                      child: Image(
                                          height: 41.94,
                                          width: 41.94,
                                          image: AssetImage(
                                            'images/widget_images/23.png',
                                          )),
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Atlanta Hawks',
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'LibreFranklin',
                                            color: Colors.black,
                                          ),),
                                        Text('America',
                                          style: TextStyle(
                                            fontFamily: 'Librefranklin',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 9,
                                            color: Color(0xFF999595),
                                          ),)
                                      ],
                                    ),
                                  ],
                                ),

                            ],
                          ),
                        ],
                      )
                  ),
                  SizedBox(height: 38.35,),
                 ...data.map((val)
                 {
                   return viewBox();
                 })
                ]
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
    return Container(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              height: 140.94,
              width: 396,
              image: AssetImage(
                  'images/widget_images/16.png'
              ),
              fit: BoxFit.fitHeight,
            ),
            SizedBox(height: 8.72,),
            Text(
              'Aritficial Inteliigence to be used for good Gover',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'LibreFranklin',
                fontSize: 17,
                fontWeight: FontWeight.w400,
              ),
              maxLines: 2,),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Festivals.2 days ago',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w200,
                  fontFamily: 'LibreFranklin',
                  color: Colors.black
                ),),
                ImageIcon(
                    AssetImage('images/icons/three dots.png'))
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 5.0, bottom: 30.0),
              width: 397,
              child: Divider(
                height: 1,
                thickness: 1,
                color: Colors.grey[500],
              ),
            ),
          ]
      ),
    );
  }
}


class cardWidget extends StatelessWidget {
  const cardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              viewBox(),
              SizedBox(height: 35,),
              Text('Latest Technology',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'LibreFranklin',
                ),),
              SizedBox(height: 23.39,),
              ...view.map((val)
              {
                return Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 19.11, right: 12.43),
                        child: Image(
                          width: 150.5,
                          height: 117.02,
                          image: AssetImage(
                            'images/widget_images/34.png',
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                              Text('Using',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Librefranklin',
                                ),
                                maxLines: 2,),
                              SizedBox(height: 57,),
                              Row(
                                children: const [
                                  Text('Technology.1 hour ago',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w200,
                                      fontSize: 10,
                                      color: Color(0xFF020000),
                                    ),),
                                  // SizedBox(width: 65,),
                                  ImageIcon(
                                    AssetImage('images/icons/three dots.png'),
                                    size: 28,),
                                ],
                              ),
                        ],
                      ),
                    ],
                  );
              }),
              ...data.map((val)
              {
                return viewBox();
              })
                ],
              )
        );
  }
}


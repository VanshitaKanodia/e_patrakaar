import 'package:flutter/material.dart';


class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> with SingleTickerProviderStateMixin {
  final List<Tab> _tabList = [
    Tab(child: Text("Sports",
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),)),
    Tab(child: Text("Health",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ))),
    Tab(child: Text("Entertainment",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ))),
    Tab(child: Text("Science",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ))),
    Tab(child: Text("Technology",
        style: TextStyle(
          fontSize: 20,
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
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Expanded(
                    child: containerWidget()
                ),
              ),

              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Container(
                    child: ListView.builder(
                      itemCount: _tabList.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {},
                          child: cardWidget(),
                        );
                      },),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Container(
                      child: containerWidget(),
                      // cardWidget(),
                  ),
                ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  child: containerWidget(),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  child: containerWidget(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class containerWidget extends StatelessWidget {
  const containerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          // return containerWidget();
          return Column(
              children: [
                Container(
                  margin: EdgeInsets.all(10.0),
                  width: 400.0,
                  height: 165.0,
                  decoration: BoxDecoration(
                    color: Colors.black38,
                  ),
                ),
              ]
          );
        }
    );
  }
}


class cardWidget extends StatelessWidget {
  const cardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
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
                    'new-update.png',
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
                        SizedBox(width: 10.0,),
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
}


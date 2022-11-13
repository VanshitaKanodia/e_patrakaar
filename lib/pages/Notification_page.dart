import 'package:flutter/material.dart';


class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> with SingleTickerProviderStateMixin {
  List<Tab> _tabList = [
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
  void dispose(){
    _tabController.dispose();
    super.dispose();
  }

  @override

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 110.0,
          backgroundColor: Colors.transparent,
          title: Text(
            'E-Patrakaar',
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
            Padding(padding: EdgeInsets.all(8.0),
            child: Container(

            ),),
            Padding(padding: EdgeInsets.all(8.0),
              child: Container(

              ),),
            Padding(padding: EdgeInsets.all(8.0),
              child: Container(

              ),),
            Padding(padding: EdgeInsets.all(8.0),
              child: Container(

              ),),
            Padding(padding: EdgeInsets.all(8.0),
              child: Container(

              ),),
          ],
        ),
      ),
    );
  }
}

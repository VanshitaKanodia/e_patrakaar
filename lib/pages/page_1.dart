import 'package:flutter/material.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('E-Patrakaar',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 27,
              fontFamily: 'ElMessiri',
              color: Colors.black,
            ),),
          backgroundColor: Colors.white,
        ),
    );
  }
}

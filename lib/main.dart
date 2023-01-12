import 'package:e_patrakar/utils/bottom_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 35, 6, 6)
      ),
      home: const BottomBar(),
      // const LoginPage(),




      //initialRoute: '/bottom',
    //   routes: {
    //     '/home_page': (context) => HomePage(),
    //     '/sound' : (context) => Viewpage(),
    //     '/search' : (context) => SearchPage(),
    //     '/notify' : (context) => NotificationPage( ),
    //     '/bottom' : (context) => BottomBar(),
    //  }
    );
  }
}


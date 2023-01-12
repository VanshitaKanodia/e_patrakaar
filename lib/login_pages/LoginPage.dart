import 'package:e_patrakar/login_pages/inputField.dart';
import 'package:flutter/material.dart';

import 'Header.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
      backgroundColor: Color(0xFFE8E8E8),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        title: Text('ePatrakaar',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 24,
            fontFamily: 'ElMessiri',
            color: Colors.white,
          ),),
      ),
      body:Column(
              children: [
                SizedBox(height: 80),
                Header(),
                Expanded(
                  child: Container(
                      height: 500,
                      width: 500,
                      decoration: BoxDecoration(
                      color: Colors.white60,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50), 
                          topLeft: Radius.circular(50)),
                    ),
                    child: InputField(),
                  ),
                ),
              ],
            ),
    ),
    );
  }
}

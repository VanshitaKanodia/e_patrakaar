import 'package:flutter/material.dart';


class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
              backgroundColor: Colors.transparent,
              title: Text('ePatrakaar',
                style: TextStyle(
                  fontFamily: 'ElMessiri',
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
          ),
          body: Container(
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
                    size: 30,
                    ),
                  ),
                ),
                Row(
                  children: [
                    ListView.builder(
                      itemCount: 4,
                      itemBuilder: (context, index)
                      {
                        return Container(
                          color: Colors.black38,
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
    );
  }
}

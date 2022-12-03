import 'package:flutter/material.dart';


class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

List<int> data = [1,2,3,4];
class _SearchPageState extends State<SearchPage> {

  String text = "View more";
  bool expandable = true;

  String get appText => "View less";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Text('ePatrakaar',
            style: TextStyle(
              fontFamily: 'ElMessiri',
              fontWeight: FontWeight.w700,
              fontSize: 24,
              color: Colors.black,
            ),
          ),
        ),
        body: Container(
          margin: EdgeInsets.only(top: 20.0),
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black12,
                    ),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  hintText: "Search news",
                  suffixIcon: ImageIcon(AssetImage('images/icons/search outline.png'))
                ),
              ),
              SizedBox(height: 10.0,),
              CityWidget(),
              SizedBox(height: 10.0,),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Visibility(
                          visible: expandable,
                          child: CityWidget(),
                        ),
                        ExpandIcon(
                          isExpanded: expandable,
                          onPressed: (bool expanded) {
                            setState(() {
                              expandable = !expanded;
                            });
                          },
                        ),
                        Text(!expandable ? text : appText),
                      ],
                    ),
                  ],
                ),
              ),
            ],
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
            margin: EdgeInsets.only(right: 5.0),
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
                  width: 80,
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

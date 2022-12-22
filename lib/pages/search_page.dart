import 'package:flutter/material.dart';


class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

List<int> data = [1,2,3,4];
class _SearchPageState extends State<SearchPage> {

  String text = "View more";
  bool expandable = false;

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
          // margin: EdgeInsets.only(top: 23.0),
          padding: EdgeInsets.only(left: 23, right: 23),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 44,
                width: 379,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                      color: Colors.black12,
                      ),
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                    hintText: "Search news",
                    suffixIcon: ImageIcon(AssetImage('images/icons/search.png',),
                    size: 28,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 44.0,),
              Text('Top Cities',
              style: TextStyle(
                fontFamily: 'Librefranklin',
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),),
              SizedBox(height: 14.06),
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
            margin: EdgeInsets.only(right: 8.0),
            child: CircleAvatar(
              child: Image(
                image: AssetImage('images/widget_images/41.png'),
              ),
              radius: 35,
            )
          );
        }),
      ],
    );
  }
}

import 'package:flutter/material.dart';



class ArticleNews extends StatefulWidget {

  @override
  State<ArticleNews> createState() => _ArticleNewsState();
}

class _ArticleNewsState extends State<ArticleNews> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black38,
        // // for adding image

        // image: DecorationImage(
        //   fit: BoxFit.fill,
        //     //can add image here
        //   image: null,
        // )
      ),
    );
  }
}

import 'package:e_patrakar/models/article_model.dart';
import 'package:flutter/material.dart';
import '../services/api.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  late Future<Article> futureArticle;

  @override
  void initState() {
    super.initState();
    getArticle();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ApiTestPage'),
      ),
      body: Center(
        child: FutureBuilder<List<Article>>(
          future: getArticle(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data.length,
                  itemBuilder: (context , int i){
                return Column(children: [
                  Container(
                    decoration: BoxDecoration(
                      // color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      height: 80,
                      child: Image.network(snapshot.data[i].images),
                    ),
                  ),
                Text(snapshot.data[0].title),
                Text(snapshot.data[0].category),
                Text(snapshot.data[0].description),
                Text(snapshot.data[0].content),
                Text(snapshot.data[0].author),
                ]
                );
              });
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}

import 'dart:convert';
import 'package:e_patrakar/models/article_model.dart';
import 'package:http/http.dart' as http;

Future<List<Article>> getArticle() async {
  final response = await http.get(Uri.parse("https://dark-gray-buffalo-cap.cyclic.app/api/articles"));
  if (response.statusCode == 200) {

    print("Success");
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((data) => new Article.fromJson(data)).toList();
  //  return Article.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Unexpected error occured!');
  }
}

class Article {

  Article({
    required this.id,
    required this.author,
    required this.title,
    required this.description,
    required this.category,
    required this.images,
    required this.content,
  });
  
  final String id;
  final String author;
  final String title;
  final String description;
  final String category;
  final String content;
  final String images;

  factory Article.fromJson(Map<String , dynamic> json){
    return Article(
        id: json['_id'] ,
        author: json['author'],
        title: json['title'],
        description: json['description'],
        category: json['category'],
        content: json['content'],
        images: json['images']);
  }

}
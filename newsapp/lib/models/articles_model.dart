class ArticlesModel {
  final String? title;
  final String? description;
  final String? urlToImage;
  final String? url;
  ArticlesModel(
      {required this.title,
      required this.description,
      required this.urlToImage,
      required this.url});

  factory ArticlesModel.fromjson(json) {
    return ArticlesModel(
      title: json['title'],
      description: json['description'],
      urlToImage: json['urlToImage'],
      url: json['url'],
    );
  }
}

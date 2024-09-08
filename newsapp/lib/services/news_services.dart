import 'package:dio/dio.dart';
import 'package:newsapp/models/articles_model.dart';

class NewsServices {
  final Dio dio;
  NewsServices(this.dio);

  Future<List<ArticlesModel>> getNews({required String category}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/everything?q=$category&apiKey=9463ee6301214c6bbb9d6a85b71bb145');

      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData['articles'];

      List<ArticlesModel> articlesList = [];

      for (var article in articles) {
        ArticlesModel articlesModel = ArticlesModel.fromjson(article);
        articlesList.add(articlesModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}

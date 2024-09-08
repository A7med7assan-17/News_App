import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/articles_model.dart';
import 'package:newsapp/services/news_services.dart';
import 'package:newsapp/widget/circular_indicator.dart';
import 'package:newsapp/widget/error_message.dart';
import 'package:newsapp/widget/news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    super.key,
    required this.category,
  });

  final String category;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  List<ArticlesModel> articles = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    getNewsApp();
  }

  Future<void> getNewsApp() async {
    articles = await NewsServices(Dio()).getNews(category: widget.category);
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? CircularIndicator()
        : articles.isNotEmpty
            ? NewsListView(
                article: articles,
              )
            : ErrorMessage();
  }
}

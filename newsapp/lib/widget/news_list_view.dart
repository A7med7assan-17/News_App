import 'package:flutter/material.dart';
import 'package:newsapp/models/articles_model.dart';
import 'package:newsapp/screen/news_details.dart';
import 'package:newsapp/widget/custom_news_home.dart';

class NewsListView extends StatelessWidget {
  final List<ArticlesModel> article;

  const NewsListView({
    super.key,
    required this.article,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: article.length,
            (context, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return NewsDetails(articlesModel: article[index]);
              }));
            },
            child: CustomNewsHome(articlesModel: article[index])),
      );
    }));
  }
}

import 'package:flutter/material.dart';
import 'package:newsapp/models/articles_model.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsDetails extends StatefulWidget {
  NewsDetails({super.key, required this.articlesModel});
  final ArticlesModel articlesModel;

  @override
  State<NewsDetails> createState() => _NewsDetailsState();
}

class _NewsDetailsState extends State<NewsDetails> {
  late WebViewController controller;
  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.disabled)
      ..loadRequest(Uri.parse(widget.articlesModel.url!));
  }
  // ..setJavaScriptMode(JavaScriptMode.disabled)
  // ..loadRequest(Uri.parse(widget.articlesModel.url!));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: WebViewWidget(controller: controller),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:newsapp/models/articles_model.dart';

class CustomNewsHome extends StatelessWidget {
  const CustomNewsHome({super.key, required this.articlesModel});
  final ArticlesModel articlesModel;

  @override
  Widget build(BuildContext context) {
    return articlesModel.urlToImage != null
        ? Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(19),
                  child: Image.network(
                    articlesModel.urlToImage!,
                    height: 210,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  articlesModel.title!,
                  textAlign: TextAlign.start,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  articlesModel.description!,
                  textAlign: TextAlign.start,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
          )
        : const SizedBox(
            height: 0.0,
          );
  }
}

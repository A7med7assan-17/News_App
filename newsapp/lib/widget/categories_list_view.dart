import 'package:flutter/material.dart';
import 'package:newsapp/models/category_model.dart';
import 'package:newsapp/widget/custom_category.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  final List<CategoryModel> categorieslist = const [
    CategoryModel(
        categoryName: "Business", categoryImage: "assets/business.avif"),
    CategoryModel(
        categoryName: "Entertaiment", categoryImage: "assets/entertaiment.jpg"),
    CategoryModel(categoryName: "General", categoryImage: "assets/general.jpg"),
    CategoryModel(categoryName: "Health", categoryImage: "assets/health.jpg"),
    CategoryModel(
        categoryName: "Science", categoryImage: "assets/science.avif"),
    CategoryModel(
        categoryName: "Technology", categoryImage: "assets/technology.jpg"),
    CategoryModel(categoryName: "Sports", categoryImage: "assets/sport.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categorieslist.length,
          itemBuilder: (context, i) {
            return CustomCategory(categoryModel: categorieslist[i]);
          }),
    );
  }
}

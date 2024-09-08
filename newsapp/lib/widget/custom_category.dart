import 'package:flutter/material.dart';
import 'package:newsapp/models/category_model.dart';
import 'package:newsapp/screen/category_screen.dart';

class CustomCategory extends StatelessWidget {
  const CustomCategory({super.key, required this.categoryModel});
  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryScreen(
                category: categoryModel.categoryName,
              );
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Container(
          height: 120,
          width: 220,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(categoryModel.categoryImage)),
          ),
          child: Center(
            child: Text(
              categoryModel.categoryName,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 21,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

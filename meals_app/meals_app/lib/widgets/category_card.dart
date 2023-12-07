import 'package:flutter/material.dart';
import '../models/category.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category, required this.onCategoryClick});
  final Category category;
  final void Function() onCategoryClick;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.pink, //basıldığında çıkan renk
      onTap: () {
        onCategoryClick();
      },
      child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [category.color.withOpacity(0.5), category.color.withOpacity(0.9)], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: Text(category.name)),
    );
  }
}

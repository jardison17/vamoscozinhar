import 'package:flutter/material.dart';
import '../models/category.dart';

class CategoryItens extends StatelessWidget {
  final Category category;

  const CategoryItens(this.category);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(category.title),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [category.color.withOpacity(0.6), category.color],
          begin: Alignment.topLeft,
          end: Alignment.centerRight,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../models/category.dart';

class CategoryItens extends StatelessWidget {
  final Category category;

  const CategoryItens(this.category);

  @override
  Widget build(BuildContext context) {
    return Container(child: Text(category.title));
  }
}

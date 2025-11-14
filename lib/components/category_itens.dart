import 'package:flutter/material.dart';
import '../models/category.dart';

class CategoryItens extends StatelessWidget {
  final Category category;

  const CategoryItens(this.category);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Text(category.title),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          colors: [category.color.withOpacity(0.5), category.color],
          begin: Alignment.topLeft, //Começa em cima no lado esquerdo.
          end: Alignment.centerRight, //Termina em baixo no lado direito.
        ),
      ),
    );
  }
}

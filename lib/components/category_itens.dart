import 'package:flutter/material.dart';
import '../models/category.dart';
import '../screen/categoies_meals_screen.dart';

class CategoryItens extends StatelessWidget {
  final Category category;

  const CategoryItens(this.category);
  //Função Navigator
  void _celectCategory(BuildContext context) {
    Navigator.of(context).pushNamed('/Categories-meals', arguments: category);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _celectCategory(context),
      borderRadius: BorderRadius.circular(15), //Bordas arrendondadas
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [category.color.withOpacity(0.5), category.color],
            begin: Alignment.topLeft, //Começa em cima no lado esquerdo.
            end: Alignment.centerRight, //Termina em baixo no lado direito.
          ),
        ),
      ),
    );
  }
}

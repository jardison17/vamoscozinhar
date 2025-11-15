import 'package:flutter/material.dart';
import '../models/category.dart';
import '../data/dummy_data.dart';

class CategoriesMealsScreen extends StatelessWidget {
  const CategoriesMealsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)!.settings.arguments as Category;

    final categoryMeals =
        dummyMeals
            .where((meal) => meal.categories.contains(category.id))
            .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          category.title,
          style: const TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: ListView.builder(
        itemCount: categoryMeals.length,
        itemBuilder: (context, index) {
          final meal = categoryMeals[index];
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(meal.title, style: const TextStyle(fontSize: 18)),
          );
        },
      ),
    );
  }
}

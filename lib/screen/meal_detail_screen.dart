import 'package:flutter/material.dart';
import 'package:myapp/models/meal.dart';

class MealDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context)!.settings.arguments as Meal;

    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title, style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: Center(child: Text('Detalhes da Receita')),
    );
  }
}

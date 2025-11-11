import 'package:flutter/material.dart';
import 'package:myapp/screen/category_screen.dart';
import 'components/category_itens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vamos Cozinhar?',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const CategoriesScreen(),
    );
  }
}

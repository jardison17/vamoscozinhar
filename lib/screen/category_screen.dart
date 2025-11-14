import 'package:flutter/material.dart';
import '../components/category_itens.dart';
import '../data/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vamos Cosinhar', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.orange,
      ),
      body: GridView(
        padding: const EdgeInsets.all(25), //Espaçamento em todas direções
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children:
            DUMMY_CATEGORY.map((cat) {
              return CategoryItens(cat);
            }).toList(),
      ),
    );
  }
}

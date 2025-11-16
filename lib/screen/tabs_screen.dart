import 'package:flutter/material.dart';
import 'category_screen.dart';
import 'favorite_screen.dart';

class TabsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text('VAMOS COZINHAR', style: TextStyle(color: Colors.white)),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.category), text: 'Categorias'),
              Tab(icon: Icon(Icons.favorite), text: 'Favoritos'),
            ],
          ),
        ),
        body: TabBarView(children: [CategoriesScreen(), FavoriteScreen()]),
      ),
    );
  }
}

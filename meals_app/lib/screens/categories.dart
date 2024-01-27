import 'package:flutter/material.dart';
import 'package:meals_app/data/dumyy_data.dart';
import 'package:meals_app/screens/favorites.dart';
import 'package:meals_app/screens/meals.dart';
import 'package:meals_app/widgets/category_card.dart';

import '../models/category.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  // context objesi => statefull widget => context objesi tüm noktalardan erişilebilir
  // stateless widget => context objesi yalnızca build fonksiyonundan erişilebilir.
  void _changeScreen(Category category, BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => Meals(category: category)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Bir kategori seçin"),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => Favorites()));
                },
                icon: const Icon(Icons.favorite))
          ],
        ),
        body: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 16, mainAxisSpacing: 32, childAspectRatio: 150 / 100),
          children: [for (final c in categoryList) CategoryCard(category: c, onCategoryClick: () => _changeScreen(c, context))],
        ));
  }
}

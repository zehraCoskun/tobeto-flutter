import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/data/dumyy_data.dart';
import 'package:meals_app/providers/meals_provider.dart';
import 'package:meals_app/widgets/meal_card.dart';

import '../models/category.dart';
import '../models/meal.dart';

class Meals extends ConsumerWidget {
  const Meals({super.key, required this.category});
  final Category category;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Meal> mealsFromState = ref.watch(mealsProvider);

    List<Meal> meals = mealList.where((element) => (element.categoryId == category.id)).toList();

    Widget widget = ListView.builder(
      padding: const EdgeInsets.all(16),
      itemBuilder: (ctx, index) => MealCard(meal: meals[index]),
      itemCount: meals.length,
    );
    if (meals.isEmpty) {
      widget = const Center(
        child: Text("Bu kategoride bir tarif bulunmuyor"),
      );
    }
    return Scaffold(
        appBar: AppBar(
          title: Text(category.name),
        ),
        body: widget);
  }
}

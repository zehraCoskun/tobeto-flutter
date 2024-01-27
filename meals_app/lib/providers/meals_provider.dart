import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/models/meal.dart';

final mealsProvider = Provider((ProviderRef ref) {
  return const [
    Meal(
        id: "1",
        categoryId: "3",
        name: "Mercimek Çorbası",
        imageUrl: "https://cdn.yemek.com/mnresize/940/940/uploads/2014/06/mercimek-corbasi-yemekcom.jpg",
        ingredients: ["Mercimek", "Soğan"]),
  ];
});

//notifier'in oluşturulması
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/models/meal.dart';

class FavoriteMealsNotifier extends StateNotifier<List<Meal>> {
  FavoriteMealsNotifier() : super([]); //initial state

  void toggleMealFavorite(Meal meal) {
    // if (state.contains(meal)) {
    //   state.remove(meal);
    // } else {
    //   state.add(meal);
    // }


//state'i bir değişkene eşitlemeliyiz, bu yüzden yukarıda çalışmadığı durumlar oluyor
    if (state.contains(meal)) {
      state = state.where((element) => element.id != meal.id).toList();
    } else {
      state = [...state, meal]; //...spread operatördür, bütün elemanları tek tek ayırıp ekler
    }
  }
}

//provider'in oluşturulması
final favoriteMealsProvider = StateNotifierProvider<FavoriteMealsNotifier, List<Meal>>((ref) {
  return FavoriteMealsNotifier();
});


import 'package:flutter/material.dart';
import 'package:meals_app/models/category.dart';
import 'package:meals_app/models/meal.dart';

final categoryList = [
  Category(id: "1", name: "Ana yemek", color: Colors.pink),
  Category(id: "2", name: "Ara Sıcak", color: Colors.purple),
  Category(id: "3", name: "Başlangıçlar", color: Colors.amber),
  Category(id: "4", name: "Tatlılar", color: Colors.blue),
  Category(id: "5", name: "İçecekler", color: Colors.green),
];

const mealList = [
  Meal(
      id: "1",
      categoryId: "3",
      name: "Mercimek Çorbası",
      imageUrl: "https://cdn.yemek.com/mnresize/940/940/uploads/2014/06/mercimek-corbasi-yemekcom.jpg",
      ingredients: ["Mercimek", "Soğan"]),
  Meal(
      id: "1",
      categoryId: "1",
      name: "Köfte",
      imageUrl: "https://cdn.yemek.com/mnresize/940/940/uploads/2014/06/mercimek-corbasi-yemekcom.jpg",
      ingredients: ["Mercimek", "Soğan"]),
  Meal(
      id: "1",
      categoryId: "4",
      name: "Sütlaç",
      imageUrl: "https://cdn.yemek.com/mnresize/940/940/uploads/2014/06/mercimek-corbasi-yemekcom.jpg",
      ingredients: ["Mercimek", "Soğan"]),
  Meal(
      id: "1",
      categoryId: "3",
      name: "Domates Çorbası",
      imageUrl: "https://cdn.yemek.com/mnresize/940/940/uploads/2014/06/mercimek-corbasi-yemekcom.jpg",
      ingredients: ["Mercimek", "Soğan"]),
  Meal(
      id: "1",
      categoryId: "1",
      name: "Lazanya",
      imageUrl: "https://cdn.yemek.com/mnresize/940/940/uploads/2014/06/mercimek-corbasi-yemekcom.jpg",
      ingredients: ["Mercimek", "Soğan"]),
];

import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum Category { work, travel, food, dress, other }

const categoryIcon = {
  Category.work: Icons.book,
  Category.travel: Icons.train,
  Category.food: Icons.restaurant_menu,
  Category.dress: Icons.checkroom,
  Category.other: Icons.credit_card_rounded
};

class Expense {
  Expense(
      {required this.spend,
      required this.date,
      required this.price,
      required this.category})
      : id = uuid.v4();

  final String id;
  final String spend;
  final DateTime date;
  final double price;
  final Category category;
}

class CategoryExpenses {
  CategoryExpenses({required this.category, required this.expenses});

  final Category category;
  final List<Expense> expenses;

  double get totalPrice {
    double sum = 0.0;

    for (var element in expenses) {
      sum += element.price;
    }
    return sum;
  }
}

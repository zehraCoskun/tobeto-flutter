import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum Category { work, travel, food, dress, other }

const categoryIcon = {
  Category.work: Icons.book,
  Category.travel: Icons.train,
  Category.food: Icons.food_bank,
  Category.dress: Icons.shop,
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

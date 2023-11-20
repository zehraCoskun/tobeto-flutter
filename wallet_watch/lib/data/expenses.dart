import 'package:wallet_watch/models/expense.dart';

class Expenses {
  List<Expense> expenses = [
    Expense(
        spend: "Öğle yemeği",
        date: DateTime.now(),
        price: 105,
        category: Category.food),
    Expense(
        spend: "Akşam yemeği",
        date: DateTime.now(),
        price: 270,
        category: Category.food),
    Expense(
        spend: "Udemy",
        date: DateTime.now(),
        price: 45,
        category: Category.work),
    Expense(
        spend: "İzmir",
        date: DateTime.now(),
        price: 1400,
        category: Category.travel)
  ];
  void addExpense(Expense expense) {
    expenses.add(expense);
  }
}

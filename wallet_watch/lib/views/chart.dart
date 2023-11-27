import 'package:flutter/material.dart';
import 'package:wallet_watch/models/expense.dart';
import 'package:wallet_watch/views/chart_bar.dart';

class Chart extends StatelessWidget {
  const Chart({super.key, required this.allExpense});
  final List<Expense> allExpense;

  List<CategoryExpenses> get categoryExpenses {
    return [
      CategoryExpenses(
          category: Category.dress,
          expenses: allExpense
              .where((element) => element.category == Category.dress)
              .toList()),
      CategoryExpenses(
          category: Category.food,
          expenses: allExpense
              .where((element) => element.category == Category.food)
              .toList()),
      CategoryExpenses(
          category: Category.travel,
          expenses: allExpense
              .where((element) => element.category == Category.travel)
              .toList()),
      CategoryExpenses(
          category: Category.work,
          expenses: allExpense
              .where((element) => element.category == Category.work)
              .toList()),
      CategoryExpenses(
          category: Category.other,
          expenses: allExpense
              .where((element) => element.category == Category.other)
              .toList())
    ];
  }

  double get maxTotal {
    double maxTotal = 0;
    for (var element in categoryExpenses) {
      if (element.totalPrice > maxTotal) maxTotal = element.totalPrice;
    }
    return maxTotal;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Theme.of(context).primaryColor.withOpacity(0.4),
        Theme.of(context).primaryColor.withOpacity(0)
      ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: categoryExpenses
                .map((e) => ChartBar(
                    height: e.totalPrice == 0 ? 0 : e.totalPrice / maxTotal))
                .toList(),
          ),
        ),
        const SizedBox(height: 3),
        Row(
            children: categoryExpenses
                .map((expense) =>
                    Expanded(child: Icon(categoryIcon[expense.category])))
                .toList())
      ]),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:wallet_watch/assets/mycolors.dart';
import 'package:wallet_watch/models/expense.dart';
import 'package:wallet_watch/views/home_appbar.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  final double linePadding = 16;
  final double lineHeight = 48;
  final double lineFont = 16.0;
  List<Expense> expenses = [
    Expense(spend: "Öğle yemeği", date: DateTime.now(), price: 105),
    Expense(spend: "Öğle yemeği", date: DateTime.now(), price: 105),
    Expense(spend: "Öğle yemeği", date: DateTime.now(), price: 105),
    Expense(spend: "Öğle yemeği", date: DateTime.now(), price: 105),
    Expense(spend: "Öğle yemeği", date: DateTime.now(), price: 105),
    Expense(spend: "Öğle yemeği", date: DateTime.now(), price: 105),
    Expense(spend: "Öğle yemeği", date: DateTime.now(), price: 105),
    Expense(spend: "Öğle yemeği", date: DateTime.now(), price: 105),
    Expense(spend: "Öğle yemeği", date: DateTime.now(), price: 105),
    Expense(spend: "Öğle yemeği", date: DateTime.now(), price: 105),
    Expense(spend: "Öğle yemeği", date: DateTime.now(), price: 105),
    Expense(spend: "Öğle yemeği", date: DateTime.now(), price: 105),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: expenses.length,
        itemBuilder: (context, index) {
          return SizedBox(
            height: lineHeight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: linePadding),
                      child: Icon(
                        Icons.credit_score,
                        color: MyColors.mainColor,
                        size: lineFont * 2,
                      ),
                    ),
                    ListText(
                        expenses: expenses,
                        index: index,
                        lineFont: lineFont,
                        textType: "line")
                  ],
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: linePadding),
                    child: ListText(
                        expenses: expenses,
                        index: index,
                        lineFont: lineFont * 3 / 2,
                        textType: "price")),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) => const Divider(),
      ),
    );
  }
}

class ListText extends StatelessWidget {
  const ListText({
    Key? key,
    required this.expenses,
    required this.index,
    required this.lineFont,
    required this.textType, // "price" veya "line"
  });

  final List<Expense> expenses;
  final int index;
  final double lineFont;
  final String textType;

  @override
  Widget build(BuildContext context) {
    String text = (textType == "price")
        ? "₺ ${expenses[index].price}"
        : expenses[index].spend;

    return Text(
      text,
      style: TextStyle(
        color: MyColors.mainTextColor,
        fontWeight: FontWeight.w600,
        fontSize: lineFont,
      ),
    );
  }
}

// class PriceText extends StatelessWidget {
//   const PriceText(
//       {super.key,
//       required this.expenses,
//       required this.index,
//       required this.lineFont});

//   final List<Expense> expenses;
//   final int index;
//   final double lineFont;
//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       expenses[index].price.toString(),
//       style: TextStyle(
//           color: MyColors.mainTextColor,
//           fontWeight: FontWeight.w600,
//           fontSize: lineFont),
//     );
//   }
// }

// class ListText extends StatelessWidget {
//   const ListText({
//     super.key,
//     required this.expenses,
//     required this.index,
//     required this.lineFont,
//   });

//   final List<Expense> expenses;
//   final int index;
//   final double lineFont;

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       expenses[index].spend,
//       style: TextStyle(
//           color: MyColors.mainTextColor,
//           fontWeight: FontWeight.w600,
//           fontSize: lineFont),
//     );
//   }
// }

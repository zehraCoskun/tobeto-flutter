import 'package:flutter/material.dart';
import 'package:wallet_watch/models/expense.dart';
import 'package:wallet_watch/views/expenses_view.dart';
import 'package:wallet_watch/views/new_expense_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => HomeViewState();
}

class HomeViewState extends State<HomeView> {
  final GlobalKey<ExpensesViewState> expensesViewKey = GlobalKey();
  final String title = "Wallet Watch";
  final double linePadding = 16;
  final double lineHeight = 48;
  final double lineFont = 16.0;
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
  addExpense(Expense expense) {
    setState(() {
      expenses.add(expense);
    });
  }

  List<Expense> removeExpenseList = [];
  removeExpense(Expense expense) {
    setState(() {
      removeExpenseList.add(expense);
      expenses.remove(expense);
      print(expense);
      print(expenses.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
          actions: [
            IconButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    //backgroundColor: MyColors.secondaryTextColor,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12.0),
                        topRight: Radius.circular(12.0),
                      ),
                    ),
                    builder: (ctx) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            const Padding(
                              padding: EdgeInsets.only(bottom: 16.0),
                              child: Text(
                                "Yeni Bir Harcama Ekle",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  //color: MyColors.mainTextColor,
                                ),
                              ),
                            ),
                            NewExpense(onAdd: addExpense)
                          ],
                        ),
                      );
                    },
                  );
                },
                icon: const Icon(Icons.add))
          ],
        ),
        body: ExpensesView(
          expenses: expenses,
          onRemove: removeExpense,
          // onUndo: undoLastExpense,
        ));
  }
}

class ListText extends StatelessWidget {
  const ListText({
    super.key,
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
        //color: MyColors.mainTextColor,
        fontWeight: FontWeight.w600,
        fontSize: lineFont,
      ),
    );
  }
}

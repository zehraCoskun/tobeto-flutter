import 'package:flutter/material.dart';
import 'package:wallet_watch/models/expense.dart';

class ExpensesView extends StatefulWidget {
  const ExpensesView({
    super.key,
    required this.expenses,
    required this.onRemove,
  });
  final List<Expense> expenses;
  final void Function(Expense expense) onRemove;

  @override
  State<ExpensesView> createState() => ExpensesViewState();
}

class ExpensesViewState extends State<ExpensesView> {
  final double linePadding = 16;
  final double lineHeight = 48;
  final double lineFont = 16.0;
  String removeID = "";
  Expense? removeExpenseItem;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: widget.expenses.length,
      itemBuilder: (context, index) {
        return Dismissible(
            key: Key(widget.expenses[index].id), //!
            child: SizedBox(
              height: lineHeight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: linePadding),
                        child: Icon(
                          categoryIcon[widget.expenses[index].category],
                          // color: MyColors.mainColor,
                          size: lineFont * 2,
                        ),
                      ),
                      ListText(
                          expenses: widget.expenses,
                          index: index,
                          lineFont: lineFont,
                          textType: "line")
                    ],
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: linePadding),
                      child: ListText(
                          expenses: widget.expenses,
                          index: index,
                          lineFont: lineFont * 3 / 2,
                          textType: "price")),
                ],
              ),
            ),
            onDismissed: (direction) {
              setState(() {
                // removeID = widget.expenses[index].id;
                // print(removeID);
                removeExpenseItem = widget.expenses.removeAt(index);
                widget.expenses.remove(removeExpenseItem);

                final snackBar = SnackBar(
                  content:
                      Text("${removeExpenseItem!.spend} Harcamanız silindi"),
                  action: SnackBarAction(
                    label: "Geri Al",
                    onPressed: () {
                      setState(() {
                        widget.expenses.insert(index,
                            removeExpenseItem!); // Widget'ın listesine geri ekle
                      });
                    },
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              });
            });
      },
      separatorBuilder: (context, index) => const Divider(),
    );
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
        // color: MyColors.mainTextColor,
        fontWeight: FontWeight.w600,
        fontSize: lineFont,
      ),
    );
  }
}

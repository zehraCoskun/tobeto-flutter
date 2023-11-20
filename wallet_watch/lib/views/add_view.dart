import 'package:flutter/material.dart';
import 'package:wallet_watch/assets/mycolors.dart';
import 'package:wallet_watch/views/home_view.dart';
import 'package:wallet_watch/views/new_expense_view.dart';

class AddView extends StatefulWidget {
  const AddView({super.key});

  @override
  State<AddView> createState() => _AddViewState();
}

class _AddViewState extends State<AddView> {
  HomeViewState homeViewState = HomeViewState();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      width: 32,
      child: FloatingActionButton(
        onPressed: () {
          _showBottomSheet(context);
        },
        backgroundColor: MyColors.otherColor,
        child: const Icon(
          Icons.add_circle,
        ),
      ),
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12.0),
          topRight: Radius.circular(12.0),
        ),
      ),
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Text(
                  "Yeni Bir Harcama Ekle",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: MyColors.mainTextColor,
                  ),
                ),
              ),
              NewExpense(callback: () {
                homeViewState.build(context);
              })
            ],
          ),
        );
      },
    );
  }
}

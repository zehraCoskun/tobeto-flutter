import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:wallet_watch/assets/mycolors.dart';
import 'package:wallet_watch/models/expense.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() => _NewExpenseState();
}

class _NewExpenseState extends State<NewExpense> {
  final String spendLabel = "Gider kaleminizi giriniz";
  final String spendHintText = "Gider";
  final String priceLabel = "Harcadığınız tutarı giriniz";
  final String priceHintText = "Harcama tutarı";
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  DateTime _selectedDate = DateTime.now();
  Category _selectedCategory = Category.other;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        NewExpenseTextfield(
          controller: _usernameController,
          labelText: spendLabel,
          hintText: spendHintText,
        ),
        NewExpenseTextfield(
          controller: _passwordController,
          labelText: priceLabel,
          hintText: priceHintText,
          keyboardType: TextInputType.number,
          prefixText: "₺",
        ),
        Row(
          children: [
            IconButton(
                onPressed: () {
                  _selectDate(context);
                },
                icon: Icon(
                  Icons.calendar_month,
                  color: MyColors.mainColor,
                )),
            Text(DateFormat.yMMMMEEEEd().format(_selectedDate)),
            const Spacer(),
            categoryButton()
          ],
        ),
        ElevatedButton(
            style:
                ElevatedButton.styleFrom(backgroundColor: MyColors.mainColor),
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text("Ekle")),
      ],
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    //asenkron olduğu için bu kod bloğu çalışmayı bitirmeden bir sonraki kod çalışmaya başlar ve devam eder
    final DateTime? picked = await showDatePicker(
        //await ile bu kod bluğu işlemi tamamladıktan sonra buradaki işleri yapar
        context: context,
        initialDate: _selectedDate,
        firstDate:
            DateTime.now().subtract(const Duration(days: 365)), // son bir yıl
        lastDate: DateTime.now());
    //     .then((value) { //asenkron işlem bittikten sonra çalışır
    //   print("işlem bittikten sonra çalışır");
    // });

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  DropdownButton<Category> categoryButton() {
    return DropdownButton(
        dropdownColor: MyColors.secondaryTextColor,
        iconEnabledColor: MyColors.mainColor,
        value: _selectedCategory,
        items: Category.values.map((category) {
          return DropdownMenuItem(
            value: category,
            child: Text(category.name),
          );
        }).toList(),
        onChanged: (value) {
          setState(() {
            if (value != null) _selectedCategory = value;
          });
        });
  }
}

class NewExpenseTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final TextInputType keyboardType;
  final String prefixText;

  const NewExpenseTextfield(
      {super.key,
      required this.controller,
      required this.labelText,
      required this.hintText,
      this.prefixText = "",
      this.keyboardType = TextInputType.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: controller,
          keyboardType: keyboardType,
          decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: labelText,
              hintText: hintText,
              prefixText: prefixText),
        ),
        const SizedBox(
          height: 16,
        )
      ],
    );
  }
}

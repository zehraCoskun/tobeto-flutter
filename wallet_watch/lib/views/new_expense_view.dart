import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:wallet_watch/assets/mycolors.dart';

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
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate:
          DateTime.now().subtract(const Duration(days: 365)), // son bir yıl
      lastDate: DateTime.now(),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
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
            Text(DateFormat.yMMMMEEEEd().format(selectedDate))
          ],
        )
      ],
    );
  }
}

class NewExpenseTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final TextInputType keyboardType;

  const NewExpenseTextfield(
      {super.key,
      required this.controller,
      required this.labelText,
      required this.hintText,
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
          ),
        ),
        const SizedBox(
          height: 16,
        )
      ],
    );
  }
}

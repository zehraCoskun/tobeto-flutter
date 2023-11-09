import 'package:uuid/uuid.dart';

const uuid = Uuid();

class Expense {
  Expense({required this.spend, required this.date, required this.price})
      : id = uuid.v4();

  final String id;
  final String spend;
  final DateTime date;
  final double price;
}

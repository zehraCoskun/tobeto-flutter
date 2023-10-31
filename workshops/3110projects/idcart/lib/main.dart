import 'package:flutter/material.dart';
import 'package:idcart/cart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark().copyWith(
            appBarTheme: const AppBarTheme(
                centerTitle: true,
                backgroundColor: Colors.deepPurple,
                elevation: 0)),
        home: const CartID());
  }
}

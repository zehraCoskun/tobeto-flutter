import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CartID extends StatelessWidget {
  const CartID({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('dd.MM.yyyy').format(now);

    return Scaffold(
      appBar: AppBar(
          title: const Text("TOBETO",
              style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w100,
                  color: Color.fromARGB(255, 240, 232, 232)))),
      backgroundColor: const Color.fromARGB(255, 240, 232, 232),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration:
                    const BoxDecoration(shape: BoxShape.circle, boxShadow: [
                  BoxShadow(
                      color: Color.fromARGB(255, 233, 207, 235),
                      blurRadius: 0.5,
                      spreadRadius: 1.1,
                      offset: Offset(0, 0))
                ]),
                child: ClipOval(
                  child: Image.asset(
                    'assets/photo.jpg',
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Text("Zehra COŞKUN",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w800,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.deepPurple,
                      color: Colors.deepPurple)),
            ),
            const Text(
              "Mobile Developer - 1B",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Colors.deepPurple),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                formattedDate,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.deepPurple,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

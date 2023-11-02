import 'package:flutter/material.dart';

class QuizHomeScreen extends StatefulWidget {
  const QuizHomeScreen({super.key});

  @override
  State<QuizHomeScreen> createState() => _QuizHomeScreenState();
}

class _QuizHomeScreenState extends State<QuizHomeScreen> {
  String textTitle = "Hadi Flutter bilgini test edelim !";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset("lib/assets/images/quiz.png", width: 340),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              textTitle,
              style: const TextStyle(
                  color: Color.fromARGB(255, 251, 189, 8),
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/toQuestions');
              },
              child: const Text('Başla'))
        ],
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quiz_app/views/questions_screen.dart';
import 'package:quiz_app/views/quiz_home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: const QuizHomeScreen(),
      routes: {
        '/toQuestions': (context) => const QuestionScreen(),
      },
    ),
  );
}

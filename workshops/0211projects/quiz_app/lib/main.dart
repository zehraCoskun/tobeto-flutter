import 'package:flutter/material.dart';
import 'package:quiz_app/assets/colors/colors.dart';
import 'package:quiz_app/views/questions_screen.dart';
import 'package:quiz_app/views/quiz_home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData.light().copyWith(
          appBarTheme: const AppBarTheme(
              backgroundColor: mavi,
              titleTextStyle: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ))),
      home: const QuizHomeScreen(),
      routes: {
        '/toQuestions': (context) => const QuestionScreen(),
        '/toHome': (context) => const QuizHomeScreen()
      },
    ),
  );
}

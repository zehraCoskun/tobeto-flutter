import 'package:flutter/material.dart';
import 'package:quiz_app/assets/colors/colors.dart';
import 'package:quiz_app/data/quetions.dart';

class ResultScreen extends StatelessWidget {
  final int correctAnswers;
  final List<int> wrongAnswer;
  final List<String> userAnswer;

  const ResultScreen(
      {required this.correctAnswers,
      required this.wrongAnswer,
      required this.userAnswer});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Doğru Sayısı: $correctAnswers',
          ),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: turkuaz,
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/toHome');
            },
          ),
        ),
        backgroundColor: turkuaz,
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Center(
                child: Text(
                  'İşte yanlış cevapladığın sorular',
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      decoration: TextDecoration.underline),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: wrongAnswer.length,
                itemBuilder: (context, index) {
                  final wrongQuestionIndex = wrongAnswer[index];
                  final question = questions[wrongQuestionIndex];
                  return ListTile(
                    title: Text(question.question),
                    subtitle: Column(
                      children: [
                        //!Text('Senin cevabın: $userAnswer'),
                        Text('Doğru Cevap: ${question.correctAnswer}'),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ));
  }
}

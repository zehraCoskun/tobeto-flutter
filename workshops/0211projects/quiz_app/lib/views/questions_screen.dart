import 'package:flutter/material.dart';
import 'package:quiz_app/assets/colors/colors.dart';
import 'package:quiz_app/data/quetions.dart';


class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int currentPage = 1;
  int currentQuestionIndex = 0;
  int numberOfCorrextAnswer = 0;

  void updateQuestionAndPage() {
    setState(() {
      if (currentQuestionIndex < questions.length - 1) {
        currentQuestionIndex++;
        currentPage++;
      } else {
        Navigator.pop(context);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$currentPage/10',
            style: const TextStyle(
                color: myAmber,
                fontSize: 32,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Doğru cevap sayısı : $numberOfCorrextAnswer',
              style: const TextStyle(color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment
                  .stretch, // Buttonların genişliğini eşit yapar
              children: [
                Text(
                  questions[currentQuestionIndex].question,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                    height: 32), // Soru ile cevaplar arasında boşluk ekler
                ...questions[currentQuestionIndex].answers.map((answer) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (answer ==
                              questions[currentQuestionIndex].correctAnswer) {
                            numberOfCorrextAnswer += 1;
                          }
                        });
                        updateQuestionAndPage();
                      },
                      child: Text(
                        answer,
                        style: const TextStyle(fontSize: 24),
                      ),
                    ),
                  );
                }),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Baştan Başla'),
          )
        ],
      )),
    );
  }
}

class QuestionModel {
  const QuestionModel(this.question, this.answers, this.correctAnswer);

  final String question;
  final List<String> answers;
  final String correctAnswer;
}
import 'Question.dart';

class QuizBrain {
  List<Question> _questions = [
    Question('A ostra é um molusco', true),
    Question('O morcego é uma ave', false),
    Question('O ornitorrinco é um mamífero', true),
    Question('O sapo é um réptil', false),
    Question('A baleia é um peixe', false),
    Question('O avestruz é uma ave', true),
    Question('O pinguiem é uma ave', true),
    Question('O tatu é um mamífero', true),
    Question('A aranha é um inseto', false),
    Question('O camarão é um mamífero', false),
  ];

  int _questionIndex = 0;

  bool alreadyFinish() {
    return _questionIndex >= _questions.length;
  }

  String getNextQuestion() {
    return alreadyFinish()
        ? _questions[_questionIndex - 1].question
        : _questions[_questionIndex++].question;
  }

  bool isCorrect(bool userAnswer) {
    return userAnswer == _questions[_questionIndex - 1].answer;
  }

  void reset() {
    _questionIndex = 0;
  }
}

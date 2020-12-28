import 'package:quiz/question.dart';

class QuizBrain {
  int _questionNumber = 0;

  //Create a list for your question and answer
  //Make it private by adding _ in front of your property
  List<Question> _questionBank = [
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true)
  ];

  // Method to get the question
  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  //Method to get hte question's answer
  bool getQuestionAns() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  //Method to go to next question
  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    } else {}

    print(_questionNumber);
    print(_questionBank.length);
  }

  //Method to check  whether it reach the last question
  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  //Method to reset the question
  void reset() {
    _questionNumber = 0;
  }
}

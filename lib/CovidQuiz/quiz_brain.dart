import 'question.dart';

class QuizBrain {
  int _nextquestion = 0;
  List<Question> _questionBank = [
    Question(q: 'Wuhan coronavirus is the same virus as SARS.', a: false),
    Question(q: 'Antibiotics can treat Wuhan coronavirus.', a: false),
    Question(q: 'A flu vaccine can prevent Wuhan coronavirus.', a: false),
    Question(q: 'People living with HIV always more at risk?', a: false),
    Question(
        q: 'The first case of novel coronavirus was identified in Wuhan,Hubei',
        a: true),
    Question(
        q: ' Mild Symptoms of Novel coronavirus are fever,cough,shortness of breath',
        a: true),
    Question(
        q: 'If you have a runny nose and sputum, you have a common cold,” not Covid-19.',
        a: false),
    Question(
        q: 'The 19 in Covid-19 stands for the year in which it was first encountered',
        a: true),
    Question(
        q: 'Does the UK\'s National Health Service say you can use ibuprofen as a treatment of the symptoms of Covid-19',
        a: true),
    Question(
        q: 'The total surface area of two human lungs is approximately 70 square metres.',
        a: true),
    Question(
        q: 'Lungs is the organ on which corona virus primarily attack',
        a: true),
    Question(
        q: 'The virus attach itself to Ace-2 receptors in the lining of the airways when it enters the human body.',
        a: true),
    Question(
        q: 'Is blurred vision listed by who as a symptom of corona virus?',
        a: false),
  ];

  void nextQuestion() {
    if (_nextquestion < _questionBank.length - 1) {
      _nextquestion++;
    }
  }

  String getQuestionText() {
    return _questionBank[_nextquestion].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_nextquestion].questionAnswer;
  }

  bool isFinished() {
    if (_nextquestion == 12) {
      //TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.

      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  //TODO: Step 4 part B - Create a reset() method here that sets the questionNumber back to 0.
  void reset() {
    _nextquestion = 0;
  }
}
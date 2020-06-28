import 'package:flutter/material.dart';
import 'quiz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

QuizBrain qb = new QuizBrain();

class MainQuizScreen extends StatefulWidget {

  static String id = 'mainquiz_screen';

  @override
  _MainQuizScreenState createState() => _MainQuizScreenState();
}

class _MainQuizScreenState extends State<MainQuizScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> scoreKeeper = [];
  int score = 0;
//  List<String> questions = [
//    'You can lead a cow down stairs but not up stairs.',
//    'Approximately one quarter of human bones are in the feet.',
//    'A slug\'s blood is green.'
//  ];
//  List<bool> answers = [false, true, true];

//  int questionNumber = 0;

  void checkAnswer(bool userPickedAnswer) {
    if (qb.isFinished() == true) {
      Alert(
        context: context,
        title: 'Finished!',
        desc: 'You\'ve reached the end of the quiz.Your score is $score',
      ).show();

      //TODO Step 4 Part C - reset the questionNumber,
      qb.reset();

      //TODO Step 4 Part D - empty out the scoreKeeper.
      setState(() {
        scoreKeeper = [];
        score = 0;
      });
    } else {
      bool correctAnswer = qb.getQuestionAnswer();
      if (userPickedAnswer == correctAnswer) {
        score++;
        setState(() {
          scoreKeeper.add(Icon(
            Icons.check,
            color: Colors.green,
          ));
        });
      } else {
        //print('user gt it wrong');
        setState(() {
          scoreKeeper.add(Icon(
            Icons.close,
            color: Colors.red,
          ));
        });
      }
      if (qb.isFinished() == false) {
        qb.nextQuestion();
      } else {
        Alert(
          context: context,
          title: 'Finished!',
          desc: 'You\'ve reached the end of the quiz.Your score is $score',
        ).show();

        //TODO Step 4 Part C - reset the questionNumber,
        qb.reset();

        //TODO Step 4 Part D - empty out the scoreKeeper.
        setState(() {
          score = 0;
          scoreKeeper = [];
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                qb.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                checkAnswer(true);

                //The user picked true.
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                //The user picked false.
                checkAnswer(false);
              },
            ),
          ),
        ),
        //TODO: Add a Row here as your score keeper
        Row(
          children: scoreKeeper,
        )
      ],
    );
  }
}

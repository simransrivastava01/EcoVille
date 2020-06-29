import 'package:flutter/material.dart';
import 'package:hackathon/mainPage/reusable.dart';
import 'package:hackathon/calculate/fitness.dart';
import 'package:hackathon/tracker/track.dart';
import 'package:hackathon/CovidQuiz/MainQuiz.dart';
import 'package:hackathon/game.dart';
import 'package:hackathon/precaution/pre.dart';
import 'package:hackathon/aboutUs.dart';

const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF1D1E28);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Color card1 = inactiveCardColor;
  Color card2 = inactiveCardColor;
  Color card3 = inactiveCardColor;
  Color card4 = inactiveCardColor;
  Color card5 = inactiveCardColor;
  Color card6 = inactiveCardColor;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ecoville'),
        centerTitle: true,
      ),
      // backgroundColor: Colors.red,
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text(
                        'BMI CALCULATOR',
                        style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.red,
                            fontFamily: 'Pacifico'),
                      ),
                      GestureDetector(
//                    onTap: () {
//                      print("heyya");
//                    },

                        child: ReusableCard(
                          colour: card1,
                          cardChild: IconButton(
                            //label: '1',
                            icon: new Icon(
                              Icons.healing,
                              color: Colors.red,
                            ),
                            iconSize: 80,
                            color: Colors.white,
                            onPressed: () {
                              //Navigator.pushNamed(context, RegistrationScreen.id);
                              //child: SelectionButton();
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FitnessScreen()),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text(
                        'GAME',
                        style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.blue,
                            fontFamily: 'Pacifico'),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: ReusableCard(
                          colour: card2,
                          cardChild: IconButton(
                            //label: '1',
                            icon: new Icon(
                              Icons.games,
                              color: Colors.lightBlueAccent,
                            ),
                            iconSize: 80,
                            color: Colors.white,
                            onPressed: () {
                              //Navigator.pushNamed(context, RegistrationScreen.id);
                              //child: SelectionButton();
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => GameScreen()),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text(
                        'CORONA  TRACKER',
                        style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.purpleAccent,
                            fontFamily: 'Pacifico'),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: ReusableCard(
                          colour: card3,
                          cardChild: IconButton(
                            //label: '1',
                            icon: new Icon(
                              Icons.save,
                              color: Colors.purpleAccent,
                            ),
                            iconSize: 80,
                            color: Colors.white,

                            onPressed: () {
                              //Navigator.pushNamed(context, RegistrationScreen.id);
                              //child: SelectionButton();
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TrackScreen()),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text(
                        'QUIZ',
                        style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.greenAccent,
                            fontFamily: 'Pacifico'),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: ReusableCard(
                          colour: card4,
                          cardChild: IconButton(
                            //label: '1',
                            icon: new Icon(
                              Icons.question_answer,
                              color: Colors.lightGreenAccent,
                            ),
                            iconSize: 80,
                            color: Colors.white,
                            onPressed: () {
                              //Navigator.pushNamed(context, RegistrationScreen.id);
                              //child: SelectionButton();
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MainQuizScreen()),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text(
                        'PRECAUTIONS',
                        style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.yellow,
                            fontFamily: 'Pacifico'),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: ReusableCard(
                          colour: card5,
                          cardChild: IconButton(
                            //label: '1',
                            icon: new Icon(Icons.new_releases),
                            iconSize: 80,
                            color: Colors.yellow,
                            onPressed: () {
                              //Navigator.pushNamed(context, RegistrationScreen.id);
                              //child: SelectionButton();
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PrecautionScreen()),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text(
                        'ABOUT US',
                        style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.deepOrange,
                            fontFamily: 'Pacifico'),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: ReusableCard(
                          colour: card5,
                          cardChild: IconButton(
                            //label: '1',
                            icon: new Icon(Icons.people),
                            iconSize: 80,
                            color: Colors.deepOrange,
                            onPressed: () {
                              //Navigator.pushNamed(context, RegistrationScreen.id);
                              //child: SelectionButton();
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AboutScreen()),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:hackathon/mainPage/reusable.dart';
import 'icon_content.dart';
import 'package:hackathon/calculate/fitness.dart';
import 'package:hackathon/tracker/track.dart';

import 'package:hackathon/HomePage.dart';
import 'package:hackathon/game.dart';
import 'package:hackathon/mainPage/main2.dart';


import 'package:hackathon/calculate/bmi_calculator.dart';
import 'package:hackathon/calculate/routes.dart';
import 'package:hackathon/calculate/input_card.dart';
import 'package:hackathon/calculate/result_page.dart';


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
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
//                Expanded(
//                    child: Padding(
//                        padding: const EdgeInsets.all(8.0),
//                        child: SelectionButton()
//                    )
//                ),
//                new IconButton(
//                  icon: new Icon(Icons.account_circle ),
//                  iconSize: 50,
//                  color: Colors.white,
//                  onPressed: () {
//                    //Navigator.pushNamed(context, RegistrationScreen.id);
//                    //child: SelectionButton();
//                    Navigator.push(
//                      context,
//                      MaterialPageRoute(builder: (context) => FitnessScreen()),
//                    );
//                  },
//                ),
                Expanded(
                  child: GestureDetector(
//                    onTap: () {
//                      print("heyya");
//                    },
                    child: ReusableCard(
                      colour: card1,
                      cardChild: IconButton(
                      //label: '1',
                        icon: new Icon(Icons.account_circle ),
                        iconSize: 80,
                        color: Colors.white,
                        onPressed: () {
                          //Navigator.pushNamed(context, RegistrationScreen.id);
                          //child: SelectionButton();
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => FitnessScreen()),
                          );
                        },
                    ),


                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: ReusableCard(
                      colour: card2,
                      cardChild: IconButton(
                        //label: '1',
                        icon: new Icon(Icons.account_circle ),
                        iconSize: 50,
                        color: Colors.white,
                        onPressed: () {
                          //Navigator.pushNamed(context, RegistrationScreen.id);
                          //child: SelectionButton();
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => GameScreen()),
                          );
                        },
                      ),

                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: ReusableCard(
                      colour: card3,
                      cardChild: IconButton(
                        //label: '1',
                        icon: new Icon(Icons.account_circle ),
                        iconSize: 50,
                        color: Colors.white,
                        onPressed: () {
                          //Navigator.pushNamed(context, RegistrationScreen.id);
                          //child: SelectionButton();
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => TrackScreen()),
                          );
                        },
                      ),

                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: ReusableCard(
                      colour: card4,
                      cardChild: IconButton(
                        //label: '1',
                        icon: new Icon(Icons.account_circle ),
                        iconSize: 50,
                        color: Colors.white,
                        onPressed: () {
                          //Navigator.pushNamed(context, RegistrationScreen.id);
                          //child: SelectionButton();
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => FitnessScreen()),
                          );
                        },
                      ),

                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: ReusableCard(
                      colour: card5,
                      cardChild: IconButton(
                        //label: '1',
                        icon: new Icon(Icons.account_circle ),
                        iconSize: 50,
                        color: Colors.white,
                        onPressed: () {
                          //Navigator.pushNamed(context, RegistrationScreen.id);
                          //child: SelectionButton();
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => FitnessScreen()),
                          );
                        },
                      ),

                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    //onTap: () {},
                    child: ReusableCard(
                      colour: card6,
                      cardChild: IconButton(
                        //label: '1',
                        icon: new Icon(Icons.account_circle ),
                        iconSize: 50,
                        color: Colors.white,
                        onPressed: () {
                          //Navigator.pushNamed(context, RegistrationScreen.id);
                          //child: SelectionButton();
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => FitnessScreen()),
                          );
                        },
                      ),

                    ),
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
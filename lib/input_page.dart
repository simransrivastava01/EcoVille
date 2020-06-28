import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_dart.dart';
import 'icon_content.dart';

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
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      //print("heyya");
                    },
                    child: ReusableCard(
                      colour: card1,
                      cardChild: IconContent(
                        label: '1',
                        icon: FontAwesomeIcons.question,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: ReusableCard(
                      colour: card2,
                      cardChild: IconContent(
                        label: '2',
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
                      cardChild: IconContent(
                        label: '3',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: ReusableCard(
                      colour: card4,
                      cardChild: IconContent(
                        label: '4',
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
                      cardChild: IconContent(
                        label: '5',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: ReusableCard(
                      colour: card6,
                      cardChild: IconContent(
                        label: '6',
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

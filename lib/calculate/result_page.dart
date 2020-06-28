import 'package:flutter/material.dart';

import 'custom.button.dart';
import 'custom_card.dart';

//const TextStyle _kTitleStyle = TextStyle(
//  fontSize: 28.0,
//  fontWeight: FontWeight.bold,
//);
const TextStyle _kBmiCategorytStyle = TextStyle(
  color: Color(0xff29d47b),
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
);
const TextStyle _kBmiValueStyle = TextStyle(
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
);
const TextStyle _kBmiInterpretationStyle = TextStyle(
  fontSize: 22.0,
);
const TextStyle kBmiFatStyle = TextStyle(
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
);

class ResultPage extends StatelessWidget {
  final String bmiFat;
  final String bmiValue;
  final String bmiCategory;
  final String bmiInterpretation;

  ResultPage({
    @required this.bmiValue,
    @required this.bmiCategory,
    @required this.bmiInterpretation,
    @required this.bmiFat,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Result'),
        centerTitle:true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
//          Expanded(
//            child: Container(
//              child: Padding(
//                padding: const EdgeInsets.symmetric(horizontal: kElementMargin),
////                child: Text(
////                  'Your Result',
////                  style: _kTitleStyle,
////                ),
//              ),
//            ),
//          ),
          Expanded(
            flex: 5,
            child: CustomCard(
              color: kActiveCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                  'Fat Percentage : ' + bmiFat.toUpperCase() + ' %',
                    style: kBmiFatStyle,
                  ),
                  Text(
                    'Body Mass Index : '+bmiValue,
                    style: _kBmiValueStyle,
                  ),
                  Text(
                    bmiCategory.toUpperCase(),
                    style: _kBmiCategorytStyle,
                  ),
                  Text(
                    bmiInterpretation,
                    style: _kBmiInterpretationStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          CustomButton(
            label: 'RE-CALCULATE YOUR BMI',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}

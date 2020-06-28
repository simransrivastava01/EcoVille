import 'package:flutter/material.dart';

import 'bmi_calculator.dart';
import 'gender.dart';
import 'routes.dart';
import 'custom.button.dart';
import 'gender_card.dart';
import 'height_card.dart';
import 'int_card.dart';

const int _kMinHeight = 100;
const int _kMaxHeight = 210;
const int _kInitialHeight = ((_kMaxHeight + _kMinHeight) ~/ 2);
const int _kInitialWeight = 40;
const int _kInitialAge = 15;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.none;
  int height = _kInitialHeight;
  int weight = _kInitialWeight;
  int age = _kInitialAge;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: _genderRow(),
          ),
          Expanded(
            child: HeightCard(
              height: height,
              minHeight: _kMinHeight,
              maxHeight: _kMaxHeight,
              onChange: (value) {
                setState(() {
                  height = value.round();
                });
              },
            ),
          ),
          Expanded(
            child: _intRow(),
          ),
          CustomButton(
            label: 'CALCULATE YOUR BMI',
            onTap: () {
              BmiCalculator bmiCalculator = BmiCalculator(height: height, weight: weight , age: age);
              Navigator.pushNamed(
                context,
                kResultPageRoute,
                arguments: {
                  bmiValueKey: bmiCalculator.getValue(),
                  bmiCategoryKey: bmiCalculator.getCategory(),
                  bmiInterpretationKey: bmiCalculator.getInterpretation(),
                  bmiFatkey: bmiCalculator.bodyFat(),
                },
              );
            },
          )
        ],
      ),
    );
  }

  Widget _genderRow() => Row(
    children: <Widget>[
      Expanded(
        child: GenderCard(
          gender: Gender.male,
          isActive: selectedGender == Gender.male,
          onTap: () {
            setState(() {
              selectedGender = Gender.male;
            });
          },
        ),
      ),
      Expanded(
        child: GenderCard(
          gender: Gender.female,
          isActive: selectedGender == Gender.female,
          onTap: () {
            setState(() {
              selectedGender = Gender.female;
            });
          },
        ),
      ),
    ],
  );

  Widget _intRow() => Row(
    children: <Widget>[
      Expanded(
        child: IntCard(
          title: 'WEIGHT',
          value: weight,
          onTapMinus: () {
            setState(() {
              if (weight > 0) weight--;
            });
          },
          onTapPlus: () {
            setState(() {
              weight++;
            });
          },
        ),
      ),
      Expanded(
        child: IntCard(
          title: 'AGE',
          value: age,
          onTapMinus: () {
            setState(() {
              if (age > 0) age--;
            });
          },
          onTapPlus: () {
            setState(() {
              age++;
            });
          },
        ),
      ),
    ],
  );
}

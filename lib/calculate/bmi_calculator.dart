import 'dart:math';

import 'package:flutter/material.dart';

const String bmiValueKey = 'bmiValue';
const String bmiCategoryKey = 'bmiCategory';
const String bmiInterpretationKey = 'bmiInterpretation';
const String bmiFatkey = 'bmiFat';

class BmiCalculator {
  final int height;
  final int weight;
  final int age;
  double _bmi;
  double _fat;

  BmiCalculator({
    @required this.height,
    @required this.weight,
    @required this.age,
  });

  String getValue() {
    this._bmi = this.weight / pow(this.height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }
  String bodyFat()
  {
    this._fat = (1.20*_bmi)+ (0.23*this.age) ;
    return _fat.toStringAsFixed(1);
  }

  String getCategory() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}

//Women:
//
//20-40 yrs old: Underfat: under 21 percent, Healthy: 21-33 percent, Overweight: 33-39 percent, Obese: Over 39 percent
//41-60 yrs old: Underfat: under 23 percent, Healthy: 23-35 percent, Overweight : 35-40 percent Obese: over 40 percent
//61-79 yrs old: Underfat: under 24 percent, Healthy: 24-36 percent, Overweight: 36-42 percent, Obese: over 42 percent
//Men:
//
//20-40 yrs old: Underfat: under 8 percent, Healthy: 8-19 percent, Overweight: 19-25 percent, Obese: over 25 percent
//41-60 yrs old: Underfat: under 11 percent, Healthy: 11-22 percent, Overweight: 22-27 percent, Obese: over 27 percent
//61-79 yrs old: Underfat: under 13 percent, Healthy: 13-25 percent, Overweight: 25-30 percent, Obese: over 30 percent
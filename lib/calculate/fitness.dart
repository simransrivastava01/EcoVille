import 'package:flutter/material.dart';

import 'bmi_calculator.dart';
import 'routes.dart';
import 'input_card.dart';
import 'result_page.dart';

class FitnessScreen extends StatefulWidget {

  static String id = 'fitness_screen';

  @override
  _FitnessScreenState createState() => _FitnessScreenState();
}

class _FitnessScreenState extends State<FitnessScreen> {
//class Fitness extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: kInputPageRoute,
      onGenerateRoute: _routes(),
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff0a0c23),
        scaffoldBackgroundColor: Color(0xff0a0c23),
      ),
    );
  }

  RouteFactory _routes() {
    return (settings) {
      final Map<String, dynamic> arguments = settings.arguments;
      Widget screen;
      switch (settings.name) {
        case kInputPageRoute:
          screen = InputPage();
          break;
        case kResultPageRoute:
          screen = ResultPage(
            bmiValue: arguments[bmiValueKey],
            bmiCategory: arguments[bmiCategoryKey],
            bmiInterpretation: arguments[bmiInterpretationKey],
            bmiFat: arguments[bmiFatkey],
          );
          // screen = Page(arguments['argumentKey']);
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }
}

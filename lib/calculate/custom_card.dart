import 'package:flutter/material.dart';

import 'constants.dart';

const Color kActiveCardColor = Color(0xff1d2033);
const Color kInactiveCardColor = Color(0xff0f1427);
const double kLabelSize = 15.0;
const Color kActiveLabelColor = Colors.white;
const Color kInactiveLabelColor = Colors.white24;
const TextStyle kActiveLabelStyle = TextStyle(
  fontSize: kLabelSize,
  color: kActiveLabelColor,
  fontWeight: FontWeight.bold,
);
const TextStyle kInactiveLabelStyle = TextStyle(
  fontSize: kLabelSize,
  color: kInactiveLabelColor,
  fontWeight: FontWeight.bold,
);

class CustomCard extends StatelessWidget {
  final Color color;
  final Widget child;

  const CustomCard({
    @required this.color,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(kElementMargin),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}
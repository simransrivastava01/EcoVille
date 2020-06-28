import 'package:flutter/material.dart';

import 'constants.dart';

const double _kButtonHeight = 70.0;
const TextStyle _kButtonLabelStyle = TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
);

class CustomButton extends StatelessWidget {
  final void Function() onTap;
  final String label;

  CustomButton({
    this.label,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        color: kInteractiveElementColor,
        height: _kButtonHeight,
        margin: EdgeInsets.only(top: kElementMargin),
        child: Center(
          child: Text(
            label,
            style: _kButtonLabelStyle,
          ),
        ),
      ),
      onTap: onTap,
    );
  }
}
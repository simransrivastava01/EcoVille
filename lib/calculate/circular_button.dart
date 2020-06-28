import 'package:flutter/material.dart';

import 'custom_card.dart';

const double _kButtonRadius = 50.0;

class CircularButton extends StatelessWidget {
  final void Function() onTap;
  final IconData iconData;

  CircularButton({this.onTap, this.iconData});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints.tightFor(
        height: _kButtonRadius,
        width: _kButtonRadius,
      ),
      shape: CircleBorder(),
      child: Icon(iconData),
      onPressed: onTap,
      fillColor: kInactiveLabelColor,
    );
  }
}
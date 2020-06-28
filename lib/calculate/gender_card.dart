import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'gender.dart';
import 'custom_card.dart';

const double _kIconSize = 60.0;
const double _kIconLabelSeparation = 10.0;

class GenderCard extends StatefulWidget {
  final Gender gender;
  final bool isActive;
  final void Function() onTap;

  GenderCard({
    @required this.gender,
    @required this.isActive,
    @required this.onTap,
  });

  @override
  _GenderCardState createState() => _GenderCardState();
}

class _GenderCardState extends State<GenderCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: CustomCard(
        color: widget.isActive ? kActiveCardColor : kInactiveCardColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              widget.gender == Gender.male
                  ? FontAwesomeIcons.mars
                  : FontAwesomeIcons.venus,
              size: _kIconSize,
              color: widget.isActive ? kActiveLabelColor : kInactiveLabelColor,
            ),
            Container(height: _kIconLabelSeparation),
            Text(
              widget.gender == Gender.male ? 'MALE' : 'FEMALE',
              style: widget.isActive ? kActiveLabelStyle : kInactiveLabelStyle,
            ),
          ],
        ),
      ),
      onTap: widget.onTap,
    );
  }
}

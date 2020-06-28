import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';
import 'custom_card.dart';
import 'circular_button.dart';

class IntCard extends StatefulWidget {
  final String title;
  final int value;
  final void Function() onTapMinus;
  final void Function() onTapPlus;

  IntCard({
    @required this.title,
    @required this.value,
    this.onTapMinus,
    this.onTapPlus,
  });

  @override
  _IntCardState createState() => _IntCardState();
}

class _IntCardState extends State<IntCard> {
  @override
  Widget build(BuildContext context) {
    return CustomCard(
      color: kActiveCardColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            widget.title,
            style: kActiveLabelStyle,
          ),
          Text(
            '${widget.value}',
            style: kIntValueStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CircularButton(
                iconData: FontAwesomeIcons.minus,
                onTap: widget.onTapMinus,
              ),
              CircularButton(
                iconData: FontAwesomeIcons.plus,
                onTap: widget.onTapPlus,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
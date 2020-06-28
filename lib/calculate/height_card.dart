import 'package:flutter/material.dart';

import 'constants.dart';
import 'custom_card.dart';

const double _kLabelValueSeparation = 0.0;
const TextStyle _kHeightUnitsStyle = TextStyle(
  color: Colors.white60,
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
);
const double _kSliderThumbRadius = 12.0;
const double _kSliderOverlayOpacity = 0.3;
const double _kValueSliderSeparation = 0.0;

class HeightCard extends StatefulWidget {
  final int height;
  final int minHeight;
  final int maxHeight;
  final void Function(double) onChange;

  HeightCard({
    @required this.height,
    @required this.minHeight,
    @required this.maxHeight,
    this.onChange,
  });

  @override
  _HeightCardState createState() => _HeightCardState();
}

class _HeightCardState extends State<HeightCard> {
  @override
  Widget build(BuildContext context) {
    return CustomCard(
      color: kActiveCardColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'HEIGHT',
            style: kActiveLabelStyle,
          ),
          Container(height: _kLabelValueSeparation),
          Row(
            textBaseline: TextBaseline.alphabetic,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            children: <Widget>[
              Text(
                '${widget.height}',
                style: kIntValueStyle,
              ),
              Text(
                'cm',
                style: _kHeightUnitsStyle,
              ),
            ],
          ),
          Container(height: _kValueSliderSeparation),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              thumbColor: kInteractiveElementColor,
              thumbShape: RoundSliderThumbShape(
                enabledThumbRadius: _kSliderThumbRadius,
              ),
              overlayShape: RoundSliderOverlayShape(
                overlayRadius: 2 * _kSliderThumbRadius,
              ),
              activeTrackColor: kActiveLabelColor,
              inactiveTrackColor: kInactiveLabelColor,
              overlayColor:
              kInteractiveElementColor.withOpacity(_kSliderOverlayOpacity),
            ),
            child: Slider(
              min: widget.minHeight.toDouble(),
              max: widget.maxHeight.toDouble(),
              value: widget.height.toDouble(),
              onChanged: widget.onChange,
            ),
          ),
        ],
      ),
    );
  }
}
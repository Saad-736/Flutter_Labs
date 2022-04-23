import 'package:flutter/material.dart';
import 'package:bmical/constants.dart';

const double iconSize = 70.0;
const sizedBoxHeight = 25.0;

class CardChild extends StatelessWidget {
  final IconData? icon;
  final String label;

  CardChild({@required this.icon, this.label = ''});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          this.icon,
          size: iconSize,
        ),
        SizedBox(height: sizedBoxHeight),
        Text(
          this.label,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class PersentageWidget extends StatelessWidget {
  const PersentageWidget({super.key, required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
        padding: EdgeInsets.all(15.0),
        child: CircularPercentIndicator(
          radius: 45.0,
          lineWidth: 4.0,
          percent: 0.30,
          center: Text(
            "30%",
            style: TextStyle(color: Colors.white),
          ),
          progressColor: color,
        ),
      )
    ]);
  }
}

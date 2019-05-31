import 'package:flutter/material.dart';

class GradientBackProfile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.0,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xff4268d3),
                Color(0xff584cd1),
              ],
              begin: FractionalOffset(0.2, 0.0),
              end: FractionalOffset(1.0, 0.5),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp)),

    );
  }
}

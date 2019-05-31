import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget {
  String title = "Popular";

  GradientBack(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xff4268d3),
                Color(0xff584cd1),
              ],
              begin: FractionalOffset(0.0, 0.0),
              end: FractionalOffset(1.0, 1.0),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp)),
      child: Text(title,
          style: TextStyle(
              color: Colors.white,
              fontSize: 30.0,
              fontFamily: "Lato",
              fontWeight: FontWeight.bold)),
      alignment: Alignment(-0.9, -0.6),
    );
  }
}

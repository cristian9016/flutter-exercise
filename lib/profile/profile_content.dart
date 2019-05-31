import 'package:flutter/material.dart';
import '../review.dart';
import 'floating_action_button_profile.dart';

class ProfileContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final content = Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 40.0, bottom: 20.0),
          child: Text("Profile",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontFamily: "Lato",
                  fontWeight: FontWeight.bold)),
          alignment: Alignment(-0.9, -0.6),
        ),
        Container(
          child: Review("assets/images/foto.jpg", "Cristian",
              "cristian9016@gmail.com", "", Color(0xffffffff)),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            FloatingActionButtonProfile(Icon(Icons.bookmark_border), true),
            FloatingActionButtonProfile(Icon(Icons.calendar_today), true),
            FloatingActionButtonProfile(Icon(Icons.add), false),
            FloatingActionButtonProfile(Icon(Icons.mail), true),
            FloatingActionButtonProfile(Icon(Icons.person), true),
          ],
        ),
      ],
    );
    return Container(
      height: 260.0,
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
      child: content,
    );
  }
}

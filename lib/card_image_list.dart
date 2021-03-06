import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 300.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("assets/images/cascada1.jpg"),
          CardImage("assets/images/cascada2.jpg"),
          CardImage("assets/images/cascada3.png"),
          CardImage("assets/images/cascada4.jpg")
        ],
      ),
    );
  }

}
import 'package:flutter/material.dart';

import '../floating_action_button_green.dart';

class CardImageProfile extends StatelessWidget {
  String pathImage;
  String name;
  String description;
  String steps;

  CardImageProfile(this.pathImage, this.name, this.description, this.steps);

  @override
  Widget build(BuildContext context) {
    final imageCard = Container(
      width: 300.0,
      height: 200.0,
      margin: EdgeInsets.only(top: 20.0),
      decoration: BoxDecoration(
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage)),
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0, 7.0))
          ]),
    );

    final infoCard = Container(
      padding: EdgeInsets.all(20.0),
      width: 260.0,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0, 7.0))
          ]),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
          Text(
            description,
            style: TextStyle(fontWeight: FontWeight.w100, fontSize: 10.0),
          ),
          Text(
            steps,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color: Colors.orange),
          )
        ],
      ),
    );

    final cardAndBtn = Stack(
      alignment: Alignment(0.8, 1.5),
      children: <Widget>[
        infoCard,
        FloatingActionButtonGreen()
      ],
    );

    return Container(
      margin: EdgeInsets.all(20.0),
      child: Stack(
        alignment: Alignment(0, 1.5),
        children: <Widget>[imageCard, cardAndBtn],
      ),
    );
  }
}

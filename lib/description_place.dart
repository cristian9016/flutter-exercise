import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {
  String namePlace;
  int stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    final star_half = Container(
      margin: EdgeInsets.only(top: 323.0, right: 3.0),
      child: Icon(
        Icons.star_half,
        color: Color(0xfff2c611),
      ),
    );

    final star_border = Container(
      margin: EdgeInsets.only(top: 323.0, right: 3.0),
      child: Icon(
        Icons.star_border,
        color: Color(0xfff2c611),
      ),
    );

    final textDescription = Text(
      descriptionPlace,
      style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold,fontFamily: "Lato"),
      textAlign: TextAlign.left,
    );

    final star = Container(
      margin: EdgeInsets.only(top: 323.0, right: 3.0),
      child: Icon(
        Icons.star,
        color: Color(0xfff2c611),
      ),
    );
    final titleStars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 320.0, left: 20.0, right: 20.0),
          child: Text(
            namePlace,
            style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w900,
                fontFamily: "Lato"),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[star, star, star, star_half, star_border],
        )
      ],
    );

    final composedLayout = Column(
      children: <Widget>[
        titleStars,
        Container(
          margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
          child: textDescription,
        )
      ],
    );
    return composedLayout;
  }
}

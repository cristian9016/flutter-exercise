import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String pathImage = "assets/images/image.jpg";
  String name = "Cristian";
  String details = "1 review 5 photos";
  String comment = "Hay un lugar agradable en popayan";
  Color textColor;

  Review(this.pathImage, this.name, this.details, this.comment,this.textColor);

  @override
  Widget build(BuildContext context) {
    final photo = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage))),
    );

    final userName = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(name,
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 17.0, fontFamily: "Lato",color: textColor)),
    );

    final userInfo = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(details,
          textAlign: TextAlign.left,
          style: TextStyle(
              fontSize: 13.0, fontFamily: "Lato", color: textColor)),
    );

    final userComment = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(comment,
          textAlign: TextAlign.left,
          style: TextStyle(
              fontSize: 13.0, fontFamily: "Lato",fontWeight: FontWeight.bold,color: textColor)),
    );

    final userDetails = Container(
      alignment: Alignment(0.5, 0.5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          userName,
          userInfo,
          userComment
        ],
      ),
    );

    return Row(
      children: <Widget>[
        photo,
        userDetails
      ],
    );
  }
}

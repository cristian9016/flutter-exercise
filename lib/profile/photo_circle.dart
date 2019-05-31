import 'package:flutter/material.dart';

class PhotoCircle extends StatelessWidget{

  String path;

  PhotoCircle(this.path);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(top: 100.0, left: 20.0),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
          DecorationImage(fit: BoxFit.cover, image: AssetImage(path))),
    );;
  }

}
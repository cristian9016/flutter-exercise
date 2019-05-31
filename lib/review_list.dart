import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/images/foto.jpg","Cristian","Android Developer","Es un buen lugar",Color(0xffa3a5a7)),
        Review("assets/images/gargantua.jpg","Santiago","Bebe de papa","Amo mi hogar",Color(0xffa3a5a7)),
        Review("assets/images/image.jpg","Laura","Estudiante de enfermeria","Amo la enfermeria",Color(0xffa3a5a7))
      ],
    );
  }

}
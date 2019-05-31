import 'package:flutter/material.dart';
import 'profile/gradient_back_profile.dart';
import 'review.dart';
import 'profile/floating_action_button_profile.dart';
import 'profile/card_image_profile.dart';
import 'profile/profile_content.dart';

class ProfileTrip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GradientBackProfile(),
        ListView(
          padding: EdgeInsets.only(top:10.0,bottom: 70.0),
          children: <Widget>[
            Container(
              height: 220.0,
            ),
            Column(
              children: <Widget>[
                CardImageProfile("assets/images/cascada1.jpg", "Popayan",
                    "La ciudad blanca de colombia", "123.123.123"),
                CardImageProfile("assets/images/cascada2.jpg", "Cali",
                    "La sucursal del cielo", "123.123.123"),
                CardImageProfile("assets/images/cascada3.png", "Bogota",
                    "Capital de colombia", "123.123.123"),
                CardImageProfile("assets/images/cascada4.jpg", "Medellin",
                    "La ciudad de la eterna primavera", "123.123.123")
              ],
            )
          ],
        ),
        ProfileContent(),
      ],
    );
  }
}

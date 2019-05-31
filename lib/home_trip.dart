import 'package:flutter/material.dart';

import 'description_place.dart';
import 'header_app_bar.dart';
import 'review_list.dart';

class HomeTrips extends StatelessWidget {

  String desc =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace("Popayán", 4, desc),
            ReviewList()
          ],
        ),
        HeaderAppBar()
      ],
    );
  }

}
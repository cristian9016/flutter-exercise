import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'home_trip.dart';
import 'profile_trip.dart';
import 'search_trip.dart';

class PlatziTripsCuppertino extends StatelessWidget {
  int index = 0;

  final List<Widget> widgetsChildren = [
    HomeTrips(),
    SearchTrip(),
    ProfileTrip()
  ];

  void onTapTapped(int indexTap) {
    index = indexTap;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
          tabBar:
              CupertinoTabBar(onTap: onTapTapped, currentIndex: index, items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.indigo)),
            BottomNavigationBarItem(
                icon: Icon(Icons.search, color: Colors.indigo)),
            BottomNavigationBarItem(
                icon: Icon(Icons.person, color: Colors.indigo))
          ]),
          tabBuilder: (BuildContext context, int index) {
            switch (index) {
              case 0:
                return CupertinoTabView(
                  builder: (BuildContext context) => HomeTrips(),
                );
                break;
              case 1:
                return CupertinoTabView(
                  builder: (BuildContext context) => SearchTrip(),
                );
                break;
              case 2:
                return CupertinoTabView(
                  builder: (BuildContext context) => ProfileTrip(),
                );
                break;
            }
          }),
    );
  }
}

import 'package:flutter/material.dart';
import 'home_trip.dart';
import 'search_trip.dart';
import 'profile_trip.dart';
import 'platzi_trips_cuppertino.dart';

class PlatziTrips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PlatziTrips();
  }
}

class _PlatziTrips extends State<PlatziTrips> {
  int index = 0;

  final List<Widget> widgetsChildren = [
    HomeTrips(),
    SearchTrip(),
    ProfileTrip()
  ];

  void onTapTapped(int indexTap) {
    setState(() {
      index = indexTap;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      body: widgetsChildren[index],
      bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.white,
            primaryColor: Colors.purple,
          ),
          child: BottomNavigationBar(
              currentIndex: index,
              onTap: onTapTapped,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home), title: Text("")),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), title: Text("")),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), title: Text(""))
              ])),
    );
  }
}

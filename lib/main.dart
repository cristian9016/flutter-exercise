import 'package:flutter/material.dart';
import 'platzi_trips.dart';
import 'platzi_trips_cuppertino.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
//      home: PlatziTrips(),
      home: PlatziTripsCuppertino(),
    );
  }
}

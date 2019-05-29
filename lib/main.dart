import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("RETO 2"),
            leading: Icon(Icons.arrow_back),
          ),
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/image.jpg'),
                fit: BoxFit.cover
              ),
            ),
            child: Center(
              child: Container(
                color: Color.fromARGB(156, 0, 0, 0),
                height: 60,
                child: Center(
                  child: Text(
                      "Electronic Music Rules!!",
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 20
                    ),
                  ),
                )
              ),
            ),
          )
        ));
  }
}

import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int ballClick = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ask Me Anything",
      color: Colors.indigo,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text(
            "Ask Me Anything",
            textScaleFactor: 1.5,
          ),
        ),
        body: Center(
          child: FlatButton(
            splashColor: Colors.red,
            child: Image.asset("images/ball$ballClick.png"),
            onPressed: () {
              setState(() {
                ballClick = Random().nextInt(5) + 1;
              });
            },
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Container(
            color: Colors.white,
            child: Text("Hello"),
            height: 100.0,
            width: 100.0,
            margin: EdgeInsets.symmetric(
              vertical: 50.0,
              horizontal: 10.0,
            ),
          ),
        ),
      ),
    );
  }
}

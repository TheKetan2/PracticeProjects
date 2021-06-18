import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("I Am Poor"),
          backgroundColor: Colors.black87,
        ),
        body: Center(
          child: Image(
            image: AssetImage("img/cover.jpg"),
          ),
        ),
      ),
    );
  }
}

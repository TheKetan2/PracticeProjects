import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  int result;
  String health;
  ResultPage({this.result, this.health});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("BMI Result")),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              result.toString(),
              style: TextStyle(fontSize: 40.0),
            ),
            Text(
              health,
              style: TextStyle(fontSize: 40.0),
            ),
          ],
        ),
      ),
    );
  }
}

import 'dart:math';

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
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text("Dice Appp"),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var _random = new Random();
  int diceOne = 1, diceTwo = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 10.0,
        ),
        child: Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () => {
                  setState(
                    () {
                      diceOne = _random.nextInt(5) + 1;
                    },
                  )
                },
                child: Container(
                  child: Image(
                    image: AssetImage(
                      "img/dice$diceOne.png",
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: GestureDetector(
                onTap: () => {
                  setState(
                    () {
                      diceTwo = _random.nextInt(5) + 1;
                    },
                  )
                },
                child: Container(
                  child: Image(
                    image: AssetImage(
                      "img/dice$diceTwo.png",
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

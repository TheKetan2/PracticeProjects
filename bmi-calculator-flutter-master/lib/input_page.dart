import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                ResusableCard(color: Color(0xff1d1e33)),
                ResusableCard(color: Color(0xff1d1e33)),
              ],
            ),
          ),
          ResusableCard(color: Color(0xff1d1e33)),
          Expanded(
            child: Row(
              children: [
                ResusableCard(color: Color(0xff1d1e33)),
                ResusableCard(color: Color(0xff1d1e33)),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ResusableCard extends StatelessWidget {
  final Color color;
  ResusableCard({
    Key key,
    @required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: null,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

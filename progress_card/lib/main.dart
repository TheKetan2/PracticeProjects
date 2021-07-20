import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CustomCard(
          title: 'Custom Card', percentage: 50.0, color: Colors.green),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String title;
  final double percentage;
  final Color color;
  CustomCard(
      {required this.title, required this.percentage, required this.color});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Stack(children: [
            Container(
              height: 100.0,
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
              ),
            ),
            Positioned(
              left: -(percentage / 100) * width,
              top: -(percentage / 100) * width,
              child: Container(
                height: (percentage / 100) * width * 2,
                width: (percentage / 100) * width * 2,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(((percentage / 100) * width)),
                  color: color,
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//https://hatrabbits.com/wp-content/uploads/2017/01/random-word-1-736x306.jpg
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("img/dp.jpeg"),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Ketan Ramteke",
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                  fontFamily: "DancingScript",
                ),
              ),
              Text(
                "React and Flutter Dev".toUpperCase(),
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.teal.shade100,
                  fontWeight: FontWeight.bold,
                  wordSpacing: 2.5,
                ),
              ),
              SizedBox(
                width: 200.0,
                child: Divider(
                  thickness: 1,
                  color: Colors.teal.shade100,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  tileColor: Colors.white,
                  title: Text(
                    "+91-999999999",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  tileColor: Colors.white,
                  title: Text(
                    "ketan@email.com",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:travel_app_flutter/screens/HomeScreen.dart';
import 'package:travel_app_flutter/screens/LocationDetails.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF0E0CF),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                icon: Icon(
                  Icons.home,
                  color: Colors.orange,
                ),
                label: '',
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.bookmark,
                  color: Colors.black,
                ),
                icon: Icon(
                  Icons.bookmark,
                  color: Colors.orange,
                ),
                label: '',
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.settings,
                  color: Colors.black,
                ),
                icon: Icon(
                  Icons.settings,
                  color: Colors.orange,
                ),
                label: '',
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
                icon: Icon(
                  Icons.person,
                  color: Colors.orange,
                ),
                label: '',
                backgroundColor: Colors.white,
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.amber[800],
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}

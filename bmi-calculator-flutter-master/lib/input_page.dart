import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double btmContainerHeight = 80.0;
const Color bottomPinkColor = Color(0xffeb1555);
const Color activeCardColor = Color(0xff1d1e33);
const Color inactiveCardColor = Color(0xff1d1e20);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int height = 80, age = 15, weight = 100;
  bool male = true, female = false;

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
                ResusableCard(
                  color: male ? inactiveCardColor : activeCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            female = false;
                            male = true;
                          });
                        },
                        child: Icon(
                          FontAwesomeIcons.mars,
                          size: 80.0,
                        ),
                      ),
                      SizedBox(height: 10),
                      Center(
                        child: Text("Male"),
                      )
                    ],
                  ),
                ),
                ResusableCard(
                  color: female ? inactiveCardColor : activeCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            female = true;
                            male = false;
                          });
                        },
                        child: Icon(
                          FontAwesomeIcons.venus,
                          size: 80.0,
                        ),
                      ),
                      SizedBox(height: 10),
                      Center(
                        child: Text("Female"),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          ResusableCard(
            color: activeCardColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  weight.toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40.0,
                  ),
                ),
                Slider(
                  activeColor: Colors.pink,
                  inactiveColor: Colors.pinkAccent,
                  value: weight.toDouble(),
                  min: 0.0,
                  max: 200.0,
                  onChanged: (value) {
                    setState(() {
                      weight = value.toInt();
                    });
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                ResusableCard(
                  color: activeCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "HEIGHT",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        height.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40.0,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomIconButton(
                            icon: Icon(FontAwesomeIcons.minus),
                            onPress: () {
                              setState(() {
                                height--;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          CustomIconButton(
                            icon: Icon(
                              FontAwesomeIcons.plus,
                            ),
                            onPress: () {
                              setState(() {
                                height++;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                ResusableCard(
                  color: activeCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "AGE",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        age.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40.0,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomIconButton(
                            icon: Icon(FontAwesomeIcons.minus),
                            onPress: () {
                              setState(() {
                                age--;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          CustomIconButton(
                            icon: Icon(
                              FontAwesomeIcons.plus,
                            ),
                            onPress: () {
                              setState(() {
                                age++;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              print(age + height);
            },
            child: Container(
              color: bottomPinkColor,
              height: btmContainerHeight,
              width: double.infinity,
              margin: EdgeInsets.only(top: 10),
              child: Center(
                child: Text(
                  "CALCULATE",
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomIconButton extends StatelessWidget {
  final Icon icon;
  Function onPress;
  CustomIconButton({
    Key key,
    this.icon,
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.0,
      height: 50.0,
      decoration: BoxDecoration(
        color: bottomPinkColor,
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: IconButton(
        onPressed: onPress,
        icon: icon,
      ),
    );
  }
}

class ResusableCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  ResusableCard({
    @required this.color,
    this.cardChild,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

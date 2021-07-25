import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 7.0,
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Center(
                  child: Icon(
                    Icons.notifications,
                    color: Colors.black,
                  ),
                ),
              ),
              Row(
                children: [
                  Text(
                    "Ketan Ramteke",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(width: 10.0),
                  ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                    child: Container(
                      height: 50,
                      width: 50,
                      child: Image.asset("img/profile.jpg"),
                    ),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 40.0,
          ),
          Text(
            "Explore with us",
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 7.0,
                    ),
                  ],
                  color: Color(0xffCB6F08),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Center(
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            child: Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        selected = 0;
                      });
                    },
                    child: CardWidget(
                      text: "Flights",
                      isSelected: selected == 0,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        selected = 1;
                      });
                    },
                    child: CardWidget(
                      text: "Apartments",
                      isSelected: selected == 1,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        selected = 2;
                      });
                    },
                    child: CardWidget(
                      text: "Activities",
                      isSelected: selected == 2,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        selected = 3;
                      });
                    },
                    child: CardWidget(
                      text: "Museums",
                      isSelected: selected == 3,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recommended",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Row(
                children: [
                  Text("View All"),
                  InkWell(
                    onTap: () {},
                    child: Icon(Icons.arrow_forward),
                  ),
                ],
              )
            ],
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(vertical: 20),
              scrollDirection: Axis.horizontal,
              children: [
                LocationCard(
                  img: Image.asset(
                    "img/one.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                LocationCard(
                  img: Image.asset(
                    "img/two.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                LocationCard(
                  img: Image.asset(
                    "img/three.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                LocationCard(
                  img: Image.asset(
                    "img/four.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class LocationCard extends StatelessWidget {
  final Image img;
  const LocationCard({
    required this.img,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        child: Container(
          height: 300,
          width: 200,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: img,
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Desination One",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("Very Owesome location"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.location_city,
                                color: Colors.orange,
                              ),
                              SizedBox(width: 10),
                              Icon(
                                Icons.airplanemode_active,
                                color: Colors.orange,
                              ),
                            ],
                          ),
                          Text(
                            "\$400",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final String text;
  final bool isSelected;
  const CardWidget({
    required this.text,
    required this.isSelected,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 20.0,
      ),
      padding: EdgeInsets.all(10),
      height: 50,
      child: Center(
        child: Text(text),
      ),
      decoration: BoxDecoration(
        color: isSelected ? Colors.orange : Colors.orange[300],
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
    );
  }
}

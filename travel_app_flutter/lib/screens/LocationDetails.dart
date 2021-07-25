import 'package:flutter/material.dart';

class LocationDetails extends StatefulWidget {
  @override
  _LocationDetailsState createState() => _LocationDetailsState();
}

class _LocationDetailsState extends State<LocationDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              child: Container(
                color: Colors.white,
                child: Stack(
                  children: [
                    Container(
                      height: 400,
                      child: Image.asset(
                        "img/one.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 50,
                        height: 50,
                        margin: EdgeInsets.only(
                          top: 20,
                          left: 20,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              25,
                            ),
                          ),
                        ),
                        child: Icon(Icons.arrow_back),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Spring bay court",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                            ),
                            Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam eget lacinia purus, in egestas nisl. Vestibulum nec ultrices est. Mauris ac dignissim metus, id facilisis mi. ",
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(
                          10.0,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xff4E7407),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Text(
                          "\$400",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ServicesCard(
                          icon: Icons.airplanemode_active,
                          service: "Flights",
                        ),
                        ServicesCard(
                          icon: Icons.location_city,
                          service: "Hotels",
                        ),
                        ServicesCard(
                          icon: Icons.fastfood,
                          service: "Food",
                        ),
                        ServicesCard(
                          icon: Icons.local_taxi_outlined,
                          service: "Flights",
                        ),
                        ServicesCard(
                          icon: Icons.star,
                          service: "4.5 ratings",
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "BOOK NOW",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: Icon(
                            Icons.bookmark_add,
                            color: Colors.orange,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ServicesCard extends StatelessWidget {
  final String service;
  final IconData icon;
  const ServicesCard({
    required this.service,
    required this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.orange,
          ),
          Text(service),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

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

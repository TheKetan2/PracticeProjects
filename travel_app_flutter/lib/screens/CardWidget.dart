import 'package:flutter/material.dart';

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

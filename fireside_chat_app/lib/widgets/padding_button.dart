import 'package:flutter/material.dart';

class PaddingButton extends StatelessWidget {
  final String text;
  final Color color;
  final onPressed;
  const PaddingButton({
    required this.onPressed,
    required this.text,
    required this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        elevation: 5.0,
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            text,
          ),
        ),
      ),
    );
  }
}

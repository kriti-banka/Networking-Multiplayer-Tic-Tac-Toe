import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final List<Shadow> shadows;
  final String text;
  final double fontSize;
  const CustomText({
    Key? key,
    required this.shadows,
    required this.text,
    required this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 70,
        color: Colors.purple,
        shadows: <Shadow>[Shadow(
          offset: Offset(3.0,3.0),
          blurRadius: 3,
          color: Colors.orange
        )]
      ),
    );
  }
}

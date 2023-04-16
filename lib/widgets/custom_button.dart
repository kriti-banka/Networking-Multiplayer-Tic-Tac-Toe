import 'dart:math';

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;

  final String text;
  const CustomButton({
    Key? key,
    required this.onTap,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      width: 300,height: 60,
      child:
      ElevatedButton(
        onPressed: onTap,
        child: Text(text,style:
                TextStyle(fontSize: 23,color: Colors.orange,fontWeight: FontWeight.w700),
                ),
        style: ElevatedButton.styleFrom(
            maximumSize: Size(width, 80),
            backgroundColor: Colors.purple,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
        ),
      ),
    );

  }
}

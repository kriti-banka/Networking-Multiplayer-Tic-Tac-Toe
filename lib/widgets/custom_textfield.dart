import 'package:flutter/material.dart';

import 'package:mp_tictactoe/utils/colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool isReadOnly;
  const CustomTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.isReadOnly = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     width: 300,
      child: TextField(
        cursorColor: Colors.purple,
        readOnly: isReadOnly,
        controller: controller,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.purple,width: 3)),
          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.purple)),
          fillColor: bgColor,
          filled: false,
          hintText: hintText,hintStyle: TextStyle(color: Colors.white)
        ),
      ),
    );
  }
}

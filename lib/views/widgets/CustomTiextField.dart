import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
    this.maxLines = 1,
  });

  final String hint;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      cursorColor: kPrimryColor, //  color of ----> |
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: kPrimryColor),
        border: BuildBorder(),
        enabledBorder: BuildBorder(),
        focusedBorder: BuildBorder(color: kPrimryColor),
      ),
    );
  }

  OutlineInputBorder BuildBorder({color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(
        color: color ?? Colors.white,
        //Color in border side if color send هيساوية ,dont send check by ?? meaning if color = null thats meaning dont send then will be = white
      ),
    );
  }
}

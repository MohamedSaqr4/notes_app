import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, this.isSelected = false, required this.color});
  final bool isSelected;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0),
      child: isSelected
          ? CircleAvatar(
              backgroundColor: Colors.white,
              radius: 25,
              child: CircleAvatar(
                backgroundColor: color,
                radius: 23,
              ),
            )
          : CircleAvatar(
              backgroundColor: color,
              radius: 25,
            ),
    );
  }
}

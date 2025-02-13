import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    super.key,
    required this.icon,
    this.onPressed,
  });

  final Icon icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Color(0xff3b3b3b)),
      child: Center(child: IconButton(onPressed: onPressed, icon: icon)),
    );
  }
}

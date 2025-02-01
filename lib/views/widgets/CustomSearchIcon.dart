import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Color(0xff3b3b3b)),
      child:
          Center(child: IconButton(onPressed: () {}, icon: Icon(Icons.search))),
    );
  }
}

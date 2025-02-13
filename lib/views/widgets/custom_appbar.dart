// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'CustomIcon.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final void Function()? onPressed;

  const CustomAppBar({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      titleSpacing: 0,
      backgroundColor: const Color(0xff303030),
      elevation: 0,
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 8),
          child: CustomIcon(
            onPressed: onPressed,
            icon: const Icon(Icons.check),
          ),
        ),
      ],
    );
  }
}

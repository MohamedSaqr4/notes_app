import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/color%20item.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  List<Color> colors = [
    Color(0xFF1E1E2C),
    Color(0xFF3A3A55),
    Color(0xFF736CED),
    Color(0xFFB798E0),
    Color(0xFFF3D9DC),
    Color(0xFFF8E2A7),
    Color(0xFF68C3C0),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              currentIndex = index;
            });
          },
          child: ColorItem(
            color: colors[index],
            isSelected: currentIndex == index,
          ),
        ),
      ),
    );
  }
}


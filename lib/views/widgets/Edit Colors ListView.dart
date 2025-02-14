import 'package:flutter/material.dart';
import 'package:note_app/Models/NoteModel.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/views/widgets/color%20item.dart';

class EditColorListView extends StatefulWidget {
  const EditColorListView({super.key, required this.note});

  final NoteModel note;
  @override
  State<EditColorListView> createState() => _EditColorListViewState();
}

class _EditColorListViewState extends State<EditColorListView> {
  late int currentIndex;
  @override
  void initState() {
    super.initState();
    currentIndex = kColors.indexOf(
        Color(widget.note.color)); //need index to the color send from not
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        itemCount: kColors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              currentIndex = index;
              widget.note.color = kColors[currentIndex].value;
            });
          },
          child: ColorItem(
            color: kColors[index],
            isSelected: currentIndex == index,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/NotesListView.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(children: [Expanded(child: NotesListView())]),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:note_app/Models/NoteModel.dart';
import 'package:note_app/views/widgets/EditNoteBody.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({
    super.key,
    required this.note,
  });
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   body: EditNoteBody(note: note),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/Models/NoteModel.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/views/widgets/CustomTiextField.dart';
import 'package:note_app/views/widgets/custom_appbar.dart';

class EditNoteBody extends StatefulWidget {
  const EditNoteBody({
    super.key,
    required this.note,
  });

  final NoteModel note;

  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          CustomAppBar(
            title: 'Edit Note',
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.content = content ?? widget.note.content;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
          ),
          const SizedBox(height: 24),
          CustomTextField(
              onChanged: (value) {
                title = value;
              },
              hint: widget.note.title),
          const SizedBox(height: 16),
          CustomTextField(
              onChanged: (value) {
                content = value;
              },
              hint: widget.note.content,
              maxLines: 5),
        ],
      ),
    );
  }
}

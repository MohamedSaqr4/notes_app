import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/views/widgets/AddNoteBottomSheet.dart';
import 'package:note_app/views/widgets/CustomIcon.dart';
import 'package:note_app/views/widgets/NotesViewBody.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff303030),
        elevation: 0,
        title: const Text('Notes'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(top: 8.0, bottom: 8.0, right: 16),
            child: CustomIcon(icon: Icon(Icons.search)),
          ),
        ],
      ),
      body: const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimryColor,
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16)),
            builder: (context) {
              return const AddNoteBottomSheet();
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

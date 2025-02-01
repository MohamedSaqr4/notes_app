import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/CustomSearchIcon.dart';
import 'package:note_app/views/widgets/NotesViewBody.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff303030),
        elevation: 0,
        title: const Text('Notes App'),
        actions: const [
          Padding(
            padding:EdgeInsets.only(top: 8.0, bottom: 8.0, right: 16),
            child: CustomSearchIcon(),
          ),
        ],
      ),
  body: NotesViewBody(),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/CustomIcon.dart';
import 'package:note_app/views/widgets/EditNoteBody.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff303030),
        elevation: 0,
        title: const Text('Edit Note'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(top: 8.0, bottom: 8.0, right: 16),
            child: CustomIcon(icon: Icon(Icons.check)),
          ),
        ],
      ),
      body: const EditNoteBody(),
    );
  }
}


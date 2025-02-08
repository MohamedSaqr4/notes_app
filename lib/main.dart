import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/Models/NoteModel.dart';
import 'package:note_app/Simple%20Block%20Observe.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/cubits/Add%20Note%20Cubit/add_note_cubit.dart';
import 'package:note_app/views/NotesView.dart';

void main() async {
  Bloc.observer = SimpleBlockObserve();
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNoteCubit(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
        home: const NotesView(),
      ),
    );
  }
}

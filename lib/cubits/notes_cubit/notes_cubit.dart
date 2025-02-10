import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:note_app/Models/NoteModel.dart';
import 'package:note_app/constants.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchAllNotes() {
    // emit(NotesLoading()); ملوش لازمة لان البيانات جاهزة ومفيش لودينج
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      var notes = notesBox.values.toList();
      emit(NotesSuccess(notes));
    } catch (e) {
      emit(NotesFailure(e.toString()));
    }
  }
}

import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:note_app/Models/NoteModel.dart';
import 'package:note_app/constants.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  AddNote(NoteModel note) async {
    emit(AddNoteLoadin());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox); // mainكدا استدعينا نفس البوكس الي عرفناة في ال
      await notesBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}

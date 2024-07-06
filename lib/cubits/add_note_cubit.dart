import 'package:bloc/bloc.dart';
import 'package:flutter/animation.dart';
import 'package:hive_flutter/adapters.dart';

import 'package:notesapp/const.dart';
import 'package:notesapp/model/NoteModel.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  Color color = const Color(0xffAC3931);
  addNote(NoteModel note) async {

    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}

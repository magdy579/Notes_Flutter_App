import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notesapp/cubits/add_note_cubit.dart';
import 'package:notesapp/model/NoteModel.dart';

import '../const.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
List<NoteModel>? notes;
  fetchAllNotes()
  {

      var notesBox = Hive.box<NoteModel>(kNotesBox);

       notes =notesBox.values.toList();
       emit(NotesSuccess());



  }
}
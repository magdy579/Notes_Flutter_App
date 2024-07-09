import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notesapp/Widget/CustomTectField.dart';
import 'package:notesapp/Widget/addNoteForm.dart';
import 'package:notesapp/const.dart';
import 'package:notesapp/cubits/add_note_cubit.dart';
import 'package:notesapp/cubits/notes_cubit.dart';

class bottomSheet extends StatefulWidget {
  const bottomSheet({super.key});

  @override
  State<bottomSheet> createState() => _bottomSheetState();
}

class _bottomSheetState extends State<bottomSheet> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteLoading) {
              isLoading = true;
            }
            if (state is AddNoteFailure) {

            }
            if (state is AddNoteSuccess) {
              Navigator.pop(context);
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
                inAsyncCall: isLoading,
                child: const SingleChildScrollView(
                    child: add_note_form()));
          },

        ),
      ),
    );
  }
}




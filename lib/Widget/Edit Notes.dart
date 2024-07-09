import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/Widget/CustomAppBar.dart';
import 'package:notesapp/Widget/CustomTectField.dart';
import 'package:notesapp/cubits/notes_cubit.dart';
import 'package:notesapp/model/NoteModel.dart';

class EditNotes extends StatefulWidget {
  const EditNotes({super.key,required this.note});
static String id ='EditNotes';
  final NoteModel note;

  @override
  State<EditNotes> createState() => _EditNotesState();
}

class _EditNotesState extends State<EditNotes> {
  @override
   String? title, content;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  const EdgeInsets.only(left: 24.0, right: 24.0, bottom: 16.0),
        child: Column(
          children: [
            const SizedBox(height: 45),
            customAppbar(
              onTap: (){
                widget.note.title =title?? widget.note.title;
                widget.note.subTitle =content?? widget.note.subTitle;
                widget.note.save();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              },
              icon: Icons.check,

            ),
            const SizedBox(
              height: 32,
            ),
             CustomTextField(
              onChanged: (value) {
                title= value;
              },
              hint: 'title',
            ),
            const SizedBox(
              height: 24,
            ),
             CustomTextField(
              onChanged: (value) {
                content= value;
              },
              hint: 'Enter Note',
              maxLine: 5,
            ),
          ]
        ),
      ),
    );
  }
}

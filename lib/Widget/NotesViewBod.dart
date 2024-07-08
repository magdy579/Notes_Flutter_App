import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/ListView.dart';
import 'package:notesapp/Widget/CustomAppBar.dart';
import 'package:notesapp/cubits/notes_cubit.dart';



class NotesViewBody extends StatefulWidget {
  const NotesViewBody({Key? key}) : super(key: key);

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {

  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children:  [
          SizedBox(
            height: 50,
          ),
          customAppbar(

            icon: Icon(Icons.search),
          ),
          Expanded(
            child: ListViewNotes(),
          ),
        ],
      ),
    );
  }
}

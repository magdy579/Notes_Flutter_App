import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:notesapp/Widget/CustomAppBar.dart';
import 'package:notesapp/Widget/NotesViewBod.dart';
import 'package:notesapp/Widget/showBottomSheet.dart';
import 'package:notesapp/cubits/notes_cubit.dart';



class HomeNote extends StatelessWidget {
  const HomeNote({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                shape: const BeveledRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16)),
                ),
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return const bottomSheet();
                });
          },
          child: const Icon(
            Icons.add,
            color: Colors.black,
          ),
        ),
        body: const NotesViewBody(),
      ),
    );
  }
}



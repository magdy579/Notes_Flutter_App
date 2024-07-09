import 'package:flutter/material.dart';
import 'package:notesapp/Widget/Edit%20Notes.dart';
import 'package:notesapp/const.dart';
import 'package:notesapp/cubits/add_note_cubit.dart';
import 'package:notesapp/cubits/notes_cubit.dart';
import 'package:notesapp/home.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notesapp/model/NoteModel.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/simple_bloc_observe.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'Poppins',
        ),
        home: HomeNote(),
        // routes: {
        //   EditNotes.id: (context) => const EditNotes(),
        // },
      ),
    );
  }
}


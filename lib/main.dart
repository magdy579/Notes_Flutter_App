import 'package:flutter/material.dart';
import 'package:notesapp/Edit%20Notes.dart';
import 'package:notesapp/const.dart';
import 'package:notesapp/home.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notesapp/model/NoteModel.dart';

void main() async{
  await Hive.initFlutter();
  Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
      ),
      home:  HomeNote(),
routes: {
  EditNotes.id :(context)=> EditNotes(),
},
    );
  }
}


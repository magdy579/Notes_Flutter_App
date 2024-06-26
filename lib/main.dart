import 'package:flutter/material.dart';
import 'package:notesapp/Edit%20Notes.dart';
import 'package:notesapp/home.dart';

void main() {
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


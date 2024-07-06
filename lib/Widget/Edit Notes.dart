import 'package:flutter/material.dart';
import 'package:notesapp/Widget/CustomAppBar.dart';
import 'package:notesapp/Widget/CustomTectField.dart';

class EditNotes extends StatelessWidget {
  const EditNotes({super.key});
static String id ='EditNotes';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.only(left: 24.0, right: 24.0, bottom: 16.0),
        child: Column(
          children: [
            SizedBox(height: 45),
            customAppbar(
              icon: Icon(Icons.check),
            ),
            SizedBox(
              height: 32,
            ),
            CustomTextField(
              hint: 'title',
            ),
            SizedBox(
              height: 24,
            ),
            CustomTextField(
              hint: 'Enter Note',
              maxLine: 5,
            ),
          ]
        ),
      ),
    );
  }
}

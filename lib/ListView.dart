import 'package:flutter/material.dart';
import 'package:notesapp/Widget/CustomNoteItem.dart';

import 'CustomNoteItem.dart';

class ListViewNotes extends StatelessWidget {
  const ListViewNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context,index){

          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child:  CustomNote(),
          );
        });
  }
}
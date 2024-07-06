import 'package:flutter/material.dart';

import 'CustomNoteItem.dart';

class ListViewNotes extends StatelessWidget {
  const ListViewNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 1.0),
      child: ListView.builder(
        padding: EdgeInsets.zero,
          itemBuilder: (context,index){

            return const Padding(
              padding:  EdgeInsets.symmetric(vertical: 4.0),
              child:  CustomNote(),
            );
          }),
    );
  }
}
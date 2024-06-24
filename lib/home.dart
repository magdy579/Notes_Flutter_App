import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notesapp/CustomAppBar.dart';
import 'package:notesapp/CustomNoteItem.dart';

class HomeNote extends StatelessWidget {
  const HomeNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body:
       Padding(
         padding: const EdgeInsets.symmetric(horizontal: 24.0),
         child: Column(
           children: [
             SizedBox(height: 45),
             customAppbar(),
             SizedBox(
               height: 30,
             ),
             CustomNote(),
           ],
         ),
       ),
    );
  }

}






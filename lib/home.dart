import 'package:flutter/material.dart';
import 'package:notesapp/CustomAppBar.dart';

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
             SizedBox(height: 20),
             customAppbar(),
           ],
         ),
       ),
    );
  }

}





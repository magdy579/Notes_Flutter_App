import 'package:flutter/material.dart';
import 'package:notesapp/Widget/CustomSearch.dart';

class customAppbar extends StatelessWidget {
  const customAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Notes ',style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w400,
        ),),
        Spacer(),
        CustomSearchIcon(),

      ],
    );
  }
}
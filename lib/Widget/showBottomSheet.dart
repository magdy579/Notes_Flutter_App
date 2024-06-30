
import 'package:flutter/material.dart';
import 'package:notesapp/const.dart';

class bottomSheet extends StatelessWidget {
  const bottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Column(

          children: [
            SizedBox(
              height: 32,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: CustomTextField(),
            ),
          ],
      ),
    );
  }
}
class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return   TextField(
      cursorColor: kcolor,
      decoration:InputDecoration(
        hintText: 'Title',
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kcolor),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
borderSide: BorderSide(
    color: color?? Colors.white,
),
      );

  }
}

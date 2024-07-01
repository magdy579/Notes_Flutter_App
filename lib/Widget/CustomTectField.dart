import 'package:flutter/material.dart';

import '../const.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxLine=1});
final String hint;
final int maxLine;
  @override
  Widget build(BuildContext context) {
    return TextField(
maxLines: maxLine,
      cursorColor: kColor,
      decoration:InputDecoration(
        hintText: hint,
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kColor),
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
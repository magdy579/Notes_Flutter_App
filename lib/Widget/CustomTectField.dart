import 'package:flutter/material.dart';

import '../const.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxLine=1, this.onSaved});
final String hint;
final int maxLine;
final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
validator: (value){
        if(value?.isEmpty ?? true){

          return 'Field is Empty ';
        }else{
          return null;
        }
},
maxLines: maxLine,
      cursorColor: kColor,
      decoration:InputDecoration(
        errorStyle: const TextStyle(
          color: Colors.white, // Set the error message color to white
        ),
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
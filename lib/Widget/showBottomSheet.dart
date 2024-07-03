
import 'package:flutter/material.dart';
import 'package:notesapp/Widget/CustomTectField.dart';
import 'package:notesapp/const.dart';

class bottomSheet extends StatelessWidget {
  const bottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child:  Container(
          height: 600,
          child: const add_note_form(),
        ),
      ),
    );
  }
}

class add_note_form extends StatefulWidget {
  const add_note_form({
    super.key,
  });

  @override
  State<add_note_form> createState() => _add_note_formState();
}

class _add_note_formState extends State<add_note_form> {

  final GlobalKey<FormState> formkey =GlobalKey();
  AutovalidateMode autovalidateMode =AutovalidateMode.disabled;
  String? title,subTitle;
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
          children: [
            const SizedBox(
              height: 32,
            ),
             CustomTextField(
               onSaved: (value){
                 title =value;
               },
              hint: 'title',
            ),
            const SizedBox(
              height: 24,
            ),
             CustomTextField(
               onSaved: (value){
                 subTitle =value;
               },
              hint: 'Enter Note',
              maxLine: 5,
            ),
            const SizedBox(
              height: 32,
            ),
            ElevatedButton(

                style: ElevatedButton.styleFrom(
                  maximumSize: const Size(double.infinity, 46),
                  minimumSize: const Size(double.infinity, 46),
                  backgroundColor:kColor,
                ),
                onPressed: (){
                  if(formkey.currentState!.validate()){
                    formkey.currentState!.save();
                  }else{
                    autovalidateMode =AutovalidateMode.always;
                    setState(() {

                    });
                  }
                }, child: const Text('Add',style: TextStyle(
              color: Colors.black
            ),)),
            const SizedBox(
              height: 32,
            ),
          ],
      ),
    );
  }
}


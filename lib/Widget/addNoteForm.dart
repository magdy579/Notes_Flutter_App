import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/Widget/CustomTectField.dart';
import 'package:notesapp/const.dart';
import 'package:notesapp/cubits/add_note_cubit.dart';
import 'package:notesapp/model/NoteModel.dart';

class add_note_form extends StatefulWidget {
  const add_note_form({
    super.key,
  });

  @override
  State<add_note_form> createState() => _add_note_formState();
}

class _add_note_formState extends State<add_note_form> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
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
            onSaved: (value) {
              title = value;
            },
            hint: 'title',
          ),
          const SizedBox(
            height: 24,
          ),
          CustomTextField(
            onSaved: (value) {
              subTitle = value;
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
                backgroundColor: kColor,
              ),
              onPressed: () {
                if (formkey.currentState!.validate()) {
                  formkey.currentState!.save();
                  var noteModal = NoteModel(
                      title: title!,
                      subTitle: subTitle!,
                      date: DateTime.now().toString(),
                      color: Colors.blue.value);
                  BlocProvider.of<AddNoteCubit>(context).addNote(noteModal);
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
              child: const Text(
                'Add',
                style: TextStyle(color: Colors.black),
              )),
          const SizedBox(
            height: 32,
          ),
        ],
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:notesapp/Widget/CustomTectField.dart';
import 'package:notesapp/const.dart';

class bottomSheet extends StatelessWidget {
  const bottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child:  Container(
          height: 600,
          child: Column(
              children: [
                SizedBox(
                  height: 32,
                ),
                CustomTextField(
                  hint: 'title',
                ),
                SizedBox(
                  height: 24,
                ),
                CustomTextField(
                  hint: 'Enter Note',
                  maxLine: 5,
                ),
                SizedBox(
                  height: 32,
                ),
                ElevatedButton(

                    style: ElevatedButton.styleFrom(
                      maximumSize: const Size(double.infinity, 46),
                      minimumSize: const Size(double.infinity, 46),
                      backgroundColor:kColor,
                    ),
                    onPressed: (){}, child: const Text('Add',style: TextStyle(
                  color: Colors.black
                ),)),
                SizedBox(
                  height: 32,
                ),
              ],
          ),
        ),
      ),
    );
  }
}


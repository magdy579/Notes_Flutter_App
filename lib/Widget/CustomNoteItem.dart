import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notesapp/Edit%20Notes.dart';

class CustomNote extends StatelessWidget {
  const CustomNote({super.key});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, EditNotes.id);
      },
      child: Container(
        padding: EdgeInsets.only(left: 16,top: 24,bottom: 24),
        width: double.infinity,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Colors.amber[200],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                'Flutter Tips',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16,bottom: 16),
                child: Text('software enginering',
                  style: TextStyle(
                    color: Colors.black.withOpacity(.5),
                    fontSize: 18,
                  ),
                ),
              ),
              trailing: IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.trash,color: Colors.black,size: 20,)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text('21 May 2024',style: TextStyle(
                color: Colors.black.withOpacity(.4),
                fontSize: 16,
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
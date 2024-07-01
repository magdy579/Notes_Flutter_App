import 'package:flutter/material.dart';

import 'package:notesapp/Widget/CustomAppBar.dart';
import 'package:notesapp/Widget/showBottomSheet.dart';

import 'Widget/ListView.dart';

class HomeNote extends StatelessWidget {
   HomeNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16)),
              ),
              context: context,
              builder: (context) {
                return bottomSheet();
              });
        },
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      body:  Padding(
        padding: EdgeInsets.only(left: 24.0, right: 24.0, bottom: 16.0),
        child: Column(
          children: [
            SizedBox(height: 45),
             customAppbar(
              icon: Icon(Icons.search_rounded),
            ),
            Expanded(child: ListViewNotes()),
          ],
        ),
      ),
    );
  }
}

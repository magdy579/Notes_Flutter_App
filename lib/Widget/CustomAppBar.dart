import 'package:flutter/material.dart';
import 'package:notesapp/Widget/CustomSearch.dart';

class customAppbar extends StatelessWidget {
   customAppbar({super.key,required this.icon});
  Icon? icon ;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('Notes ',style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w400,
        ),),
        const Spacer(),
        Container(
              height: 45,
              width: 45,

              decoration: BoxDecoration(
                color: Colors.white.withOpacity(.05),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                child: icon,
              ),
            )


      ],
    );
  }
}
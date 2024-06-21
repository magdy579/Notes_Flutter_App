import 'package:flutter/material.dart';

class HomeNote extends StatelessWidget {
  const HomeNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body:
       Padding(
         padding: const EdgeInsets.symmetric(horizontal: 24.0),
         child: Column(
           children: [
             SizedBox(height: 20),
             customAppbar(),
           ],
         ),
       ),
    );
  }

}
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
class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 45,
      width: 45,

      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.05),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Icon(Icons.search_outlined),
      ),
    );
  }
}



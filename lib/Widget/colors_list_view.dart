import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
final bool isActive;
final Color color;
  @override
  Widget build(BuildContext context) {
    return  isActive  ?  CircleAvatar(
      radius: 30,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 26,
        backgroundColor: color,
      ),
    ):  CircleAvatar(
      radius: 30,
      backgroundColor: color,
    );
  }
}

class ColorList extends StatefulWidget {
  const ColorList({super.key});

  @override
  State<ColorList> createState() => _ColorListState();
}

class _ColorListState extends State<ColorList> {
  @override
  Widget build(BuildContext context) {
int currentIndex =0;
List<Color>colors =const[
  Color(0xff0d324d),
  Color(0xff7f5a83),
  Color(0xffa188a6),
  Color(0xff9da2ab),
  Color(0xff353535),
  Color(0xffffffff),
];
    return SizedBox(
      height: 30 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                setState(() {});
              },
              child: ColorItem(
                isActive: currentIndex ==index,
                color: colors[index],
              ),
            ),
          );
        },

      ),
    );
  }
}
import 'package:flutter/material.dart';
class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.shapeicon});
 final IconData shapeicon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        height: 45,
        width: 45,
         decoration: BoxDecoration(
           color: Colors.white.withOpacity(.1),
           borderRadius: BorderRadius.circular(16),

         ),
        child: Center(
          child: Icon(shapeicon),
        ),
      ),
    );
  }
}

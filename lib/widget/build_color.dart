import 'package:flutter/material.dart';

class Colors_view extends StatefulWidget {
  const Colors_view({super.key, required this.isActive,required this.color});

  final bool isActive;
  final  Color color;

  @override
  State<Colors_view> createState() => _Colors_viewState();
}

class _Colors_viewState extends State<Colors_view> {
  @override
  Widget build(BuildContext context) {
    return widget.isActive
        ? CircleAvatar(
      radius: 25,
      backgroundColor: Colors.white,
      child: CircleAvatar(radius: 22, backgroundColor:widget.color),
    )
        : CircleAvatar(radius: 25, backgroundColor: widget.color);
  }
}
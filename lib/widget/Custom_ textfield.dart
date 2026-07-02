import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  CustomTextfield({
    required this.title,
    this.onchange,
    this.maxlines=1
  });
final int maxlines ;
  final String title;


  Function(String)? onchange;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Color(0xff53EFD9),
maxLines:maxlines ,
      onChanged: onchange,
      decoration: InputDecoration(
        hintText: title,

        hintStyle: TextStyle(color: Color(0xff53EFD9)),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(8),
        ),
        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
      ),
    );
  }
}

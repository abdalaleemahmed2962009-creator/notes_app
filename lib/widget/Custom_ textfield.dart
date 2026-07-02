import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  CustomTextfield({

    required this.title,
    this.onchange,

    @required this.Scrolling,
  });

  final String title;
  final EdgeInsets? Scrolling ;

  Function(String)? onchange;

  @override
  Widget build(BuildContext context) {
    return TextField(



        onChanged: onchange,
        decoration: InputDecoration(
          hintText: title,
          contentPadding: Scrolling,
          hintStyle: TextStyle(color: Color(0xff53EFD9)),
          enabledBorder: OutlineInputBorder(

            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(15)
          ),
          border: OutlineInputBorder(

            borderSide: BorderSide(color: Colors.white),
          ),
        ),

    );
  }
}

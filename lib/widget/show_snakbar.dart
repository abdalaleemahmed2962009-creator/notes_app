import 'package:flutter/material.dart';
void showtextSnakbar(BuildContext context, {required String message, required Color  color }) {


  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor:color  ,
      content: Center(
        child: Text(
          message,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    ),
  );
}
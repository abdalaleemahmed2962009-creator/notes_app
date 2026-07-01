import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(NoteApp());
}
class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Note APP",
      home: Scaffold(
        appBar: AppBar(
          title: Text("hello "),
        ),
      ),
    );
  }
}

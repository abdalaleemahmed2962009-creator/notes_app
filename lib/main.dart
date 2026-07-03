import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes/view/Home_Page.dart';

void main()async{
  runApp(NoteApp());
  await Hive.initFlutter();
 await Hive.openBox("notes box");
}
class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
        fontFamily: "Poppins",
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      title: "Note APP",

        home: HomePage(),

    );
  }
}

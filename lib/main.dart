import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes/Simpleblock_observerbal.dart';
import 'package:notes/constant_important.dart';
import 'package:notes/cubits/add_note_cubit/notes_add_cubit.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/view/Home_Page.dart';

void main() async {
  runApp(NoteApp());
  Bloc.observer=SimpleblockObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(KHivebox);

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

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes/Simpleblock_observerbal.dart';
import 'package:notes/constant_important.dart';
import 'package:notes/cubits/Show_Notes_Cubit/notes_Show_cubit.dart';
import 'package:notes/cubits/add_note_cubit/notes_add_cubit.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/view/Home_Page.dart';

void main() async {

  Bloc.observer=SimpleblockObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(KHivebox);
  runApp(NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create:(context) =>Notes_add_Cubit(),
        ),
        BlocProvider(
          create:(context) =>Notes_Show_Cubit(),
        ),
      ],
      child: MaterialApp(

        theme: ThemeData(
          fontFamily: "Poppins",
          brightness: Brightness.dark,
        ),
        debugShowCheckedModeBanner: false,
        title: "Note APP",

        home: HomePage(),

      ),
    );
  }
}

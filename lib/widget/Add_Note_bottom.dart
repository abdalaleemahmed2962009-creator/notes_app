import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/Show_Notes_Cubit/notes_Show_cubit.dart';
import 'package:notes/cubits/add_note_cubit/notes_add_cubit.dart';
import 'package:notes/cubits/add_note_cubit/notes_add_states.dart';
import 'package:notes/widget/AddNoteform.dart';
import 'package:notes/widget/show_snakbar.dart';


class AddNote extends StatelessWidget {
  AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Notes_add_Cubit, NotesAddState>(
      listener: (context, state) {
        if (state is NotesAddSucces) {
          BlocProvider.of<Notes_Show_Cubit>(context).Shownote();//=>add +note
          Navigator.pop(context);
          showtextSnakbar(context, message: "success", color: Colors.green);
        }
        if (state is NotesAddFailure) {
          Navigator.pop(context);
          showtextSnakbar(context, message: "Error", color: Colors.red);
        }
      },
      builder: (context, state) {
        return AbsorbPointer(
            absorbing: state is NotesAddLoading ? true : false,
            child: AddNoteform()
        );
      },
    );
  }
}

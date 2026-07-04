import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
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
          Navigator.pop(context);
          showtextSnakbar(context, message: 'success', color: Colors.green);
        }
        if (state is NotesAddFailure) {
          Navigator.pop(context);
          showtextSnakbar(context, message: 'Error', color: Colors.red);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
            inAsyncCall: state is NotesAddLoading ? true : false,
            child: BlocProvider(
              create: (context) =>  Notes_add_Cubit(),
              child: AddNoteform(),
        )
            );
      },
    );
  }
}

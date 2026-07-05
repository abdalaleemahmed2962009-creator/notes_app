import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/Show_Notes_Cubit/notes_Show_cubit.dart';
import 'package:notes/cubits/Show_Notes_Cubit/notes_Show_states.dart';
import 'package:notes/models/note_model.dart';

import 'package:notes/widget/Notes_View.dart';

class Noting_List extends StatelessWidget {
  const Noting_List({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Notes_Show_Cubit, NotesShowState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<Notes_Show_Cubit>(context).notes!;
        return Padding(
          padding: const EdgeInsets.only(bottom: 23),
          child: ListView.builder(
            itemCount: notes.length,
            itemBuilder: (context, index) {
              return Notes_View(
                note:notes[index] ,
              );
            },
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/Show_Notes_Cubit/notes_Show_cubit.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/widget/Custom_%20textfield.dart' show CustomFormTextfield;

import 'package:notes/widget/custom_icon.dart';
import 'package:notes/widget/edit_note_ColorsList.dart';
import 'package:notes/widget/show_snakbar.dart';

class EditingPage extends StatefulWidget {
  EditingPage({super.key, required this.note});

  final NoteModel note;

  String? title, subtitle;

  @override
  State<EditingPage> createState() => _EditingPageState();
}

class _EditingPageState extends State<EditingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Edit Note"),
        actions: [
          CustomIcon(
            shapeicon: Icons.check,
            onPressed: () {

              widget.note.title = widget.title ?? widget.note.title;
              widget.note.subtitle = widget.subtitle ?? widget.note.subtitle;
              widget.note.save();
              BlocProvider.of<Notes_Show_Cubit>(context).Shownote();
              Navigator.pop(context);
              showtextSnakbar(
                context,
                message: " تم تعديل نوت بناجح ",
                color: Colors.green,
              );
            },
          ),
        ],
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 9),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 40,
                    bottom: 14,
                    left: 6,
                    right: 6,
                  ),
                  child: CustomFormTextfield(
                    title: widget.note.title,
                    onchhanged: (value) {
                      widget.title = value;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 14, left: 6, right: 6),
                  child: CustomFormTextfield(
                    title: widget.note.subtitle,
                    maxlines: 6,
                    onchhanged: (value) {
                      widget.subtitle = value;
                    },
                  ),
                ),
                SizedBox(height: 10),
                edit_note_Colors_list(note: widget.note),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

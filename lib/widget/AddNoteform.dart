import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/add_note_cubit/notes_add_cubit.dart' show Notes_add_Cubit;
import 'package:notes/models/note_model.dart';
import 'package:notes/widget/Custom_%20textfield.dart';
import 'package:notes/widget/Custom_Countainer.dart';

class AddNoteform extends StatefulWidget {
  @override
  State<AddNoteform> createState() => _AddNoteformState();
}

class _AddNoteformState extends State<AddNoteform> {
  GlobalKey<FormState> keyForm = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: keyForm,
      autovalidateMode: autovalidateMode,

      child: Container(
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
                    title:'Title',
                    onsave: (data) {
                      title=data;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 14, left: 6, right: 6),
                  child: CustomFormTextfield(
                    title: 'Content',
                    maxlines: 6,

                    onsave: (data) {
                      subtitle = data;
                    },
                  ),
                ),
                SizedBox(height: 28),
                CustomCountainer(
                  name: "Add",
                  ontap: () {
                    if (keyForm.currentState!.validate()) {
                      keyForm.currentState!.save();
                      var noteModel=NoteModel(title: title!, subtitle: subtitle!, color:Colors.blue.value, data: DateTime.now().toString());
                   BlocProvider.of<Notes_add_Cubit>(context).addnote(noteModel);
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

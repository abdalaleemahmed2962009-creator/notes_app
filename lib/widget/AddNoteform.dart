import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes/cubits/add_note_cubit/notes_add_cubit.dart'
    show Notes_add_Cubit;
import 'package:notes/cubits/add_note_cubit/notes_add_states.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/widget/Colors_List.dart';
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
          padding: EdgeInsets.only(
            right: 9,
            left: 9,
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
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
                    title: 'Title',
                    onsave: (data) {
                      title = data;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 18, left: 6, right: 6),
                  child: CustomFormTextfield(
                    title: 'Content',
                    maxlines: 6,

                    onsave: (data) {
                      subtitle = data;
                    },
                  ),
                ),
                List_Colors(),
                SizedBox(height: 29),

                BlocBuilder<Notes_add_Cubit, NotesAddState>(
                  builder: (context, state) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 28),
                      child: CustomCountainer(
                        isLoading: state is NotesAddLoading ? true : false,
                        name: "Add",
                        ontap: () {
                          if (keyForm.currentState!.validate()) {
                            keyForm.currentState!.save();
                            var currentdata = DateTime.now();
                            var formatatData = DateFormat(
                              "dd-MM-yyyy",
                            ).format(currentdata);
                            var noteModel = NoteModel(
                              title: title!,
                              subtitle: subtitle!,
                              color: Colors.green.value,
                              data: formatatData,
                            );
                            BlocProvider.of<Notes_add_Cubit>(
                              context,
                            ).addnote(noteModel);
                          } else {
                            autovalidateMode = AutovalidateMode.always;
                            setState(() {});
                          }
                        },
                      ),
                    );
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

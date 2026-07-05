import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes/constant_important.dart';
import 'package:notes/cubits/Show_Notes_Cubit/notes_Show_states.dart';

import 'package:notes/models/note_model.dart';

class Notes_Show_Cubit extends Cubit<NotesShowState> {
  Notes_Show_Cubit() : super(NotesShowInitial());
  List<NoteModel>?notes;

  void Shownote() {
    var HiveboxNotes = Hive.box<NoteModel>(KHivebox);
    notes = HiveboxNotes.values.toList();
emit(NotesShowSuccess());
  }
}
import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes/constant_important.dart';
import 'package:notes/cubits/add_note_cubit/notes_add_states.dart';
import 'package:notes/models/note_model.dart';

class Notes_add_Cubit extends Cubit<NotesAddState> {
  Notes_add_Cubit() : super(NotesAddInitial());

  emit(NotesAddLoading);

  addnote(NoteModel note) async {
    try {
  var HiveboxNotes= Hive.box<NoteModel>(KHivebox);
      emit(NotesAddSucces());
      await HiveboxNotes.add(note);
    } catch (e) {
      NotesAddFailure(errorMeassage: e.toString());
    }

  }
}

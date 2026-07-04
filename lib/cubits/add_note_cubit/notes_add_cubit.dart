import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes/constant_important.dart';
import 'package:notes/cubits/add_note_cubit/notes_add_states.dart';
import 'package:notes/models/note_model.dart';

class Notes_add_Cubit extends Cubit<NotesAddState> {
  Notes_add_Cubit() : super(NotesAddInitial());



  addnote(NoteModel note) async {
    emit(NotesAddLoading());
    try {

  var HiveboxNotes= Hive.box<NoteModel>(KHivebox);
  await HiveboxNotes.add(note);
      emit(NotesAddSucces());
    } catch (e) {
     emit(NotesAddFailure(errorMeassage: e.toString()));
    }

  }
}

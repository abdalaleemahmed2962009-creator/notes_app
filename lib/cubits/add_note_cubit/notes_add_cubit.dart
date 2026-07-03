


import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes/constant_important.dart';
import 'package:notes/cubits/add_note_cubit/notes_add_states.dart';
import 'package:notes/models/note_model.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit():super(NotesAddInitial());
  emit(NotesAddLoading);
  addnote(NoteModel note)async{
try {
  var notesBox= Hive.box<NoteModel>(KHivebox);
  emit(NotesAddSucces());
  await notesBox.add(note);
}  catch (e) {
  NotesAddFailure(errorMeassage: e.toString(), );
}
  }

}
class NotesState{}
class NotesAddInitial extends NotesState{}
class NotesAddLoading extends NotesState{

}
class NotesAddSucces extends NotesState{}
class NotesAddFailure extends NotesState{
final  String errorMeassage;
NotesAddFailure({required this.errorMeassage});
}

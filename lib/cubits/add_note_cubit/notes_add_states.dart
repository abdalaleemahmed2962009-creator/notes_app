class NotesAddState{}
class NotesAddInitial extends NotesAddState{}
class NotesAddLoading extends NotesAddState{}
class NotesAddSucces extends NotesAddState{}
class NotesAddFailure extends NotesAddState{
final  String errorMeassage;
NotesAddFailure({required this.errorMeassage});
}

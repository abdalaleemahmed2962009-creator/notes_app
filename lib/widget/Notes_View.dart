import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/Show_Notes_Cubit/notes_Show_cubit.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/view/editing_page.dart';
import 'package:notes/widget/show_snakbar.dart';


class Notes_View extends StatelessWidget {
   Notes_View({super.key, required this.note});
final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return
      GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return EditingPage(note: note,);
          }));
        },
        child: Container(
          margin: EdgeInsets.only(left: 10,right: 15,top :10),
          width: 300,
          height: 200,
          decoration: BoxDecoration(
            color:Color(note.color),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  note.title,
                  style: TextStyle(color: Colors.black, fontSize: 28),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                   note.subtitle,
                    overflow:TextOverflow.ellipsis ,
                    maxLines: 3,
                    style: TextStyle(color: Colors.black.withOpacity(.5), fontSize: 16),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    note.delete();//clear =>on hive
                    BlocProvider.of<Notes_Show_Cubit>(context).Shownote();//=> updata ui
                    showtextSnakbar(context, message: "ُ تَمَّ الحَذْف نوت", color: Colors.white);
                  },
                  icon: Icon(Icons.delete, color: Colors.black, size: 38),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12,top: 26),
                child: Text(
              note.data,
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
              ),
            ],
          ),

            ),
      );
  }
}

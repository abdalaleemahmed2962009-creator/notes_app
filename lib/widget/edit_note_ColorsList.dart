
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/add_note_cubit/notes_add_cubit.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/widget/build_color.dart';

class edit_note_Colors_list extends StatefulWidget {
  edit_note_Colors_list({super.key, required this.note});
final NoteModel note;
  @override
  State<edit_note_Colors_list> createState() => _edit_note_Colors_listState();
}

class _edit_note_Colors_listState extends State<edit_note_Colors_list> {
 late int CurrentIndex ;

  List<Color> kColors = const [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.teal,
    Colors.blue,
    Colors.indigo,
    Colors.purple,
    Colors.pink,
    Colors.brown,
  ];
@override
  void initState() {

    super.initState();
    CurrentIndex=kColors.indexOf(Color(widget.note.color));
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        itemCount: kColors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 6),
            child: GestureDetector(
              onTap: () {
                widget.note.color=kColors[index].value;
                CurrentIndex=index;
                setState(() {});
              },
              child: Colors_view(
                isActive: CurrentIndex == index,
                color: kColors[index],
              ),
            ),
          );
        },
      ),
    );
  }
}

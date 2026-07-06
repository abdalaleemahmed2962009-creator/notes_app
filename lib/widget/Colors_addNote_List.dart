import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/add_note_cubit/notes_add_cubit.dart';
import 'package:notes/widget/build_color.dart';

class List_Colors extends StatefulWidget {
  List_Colors({super.key});

  @override
  State<List_Colors> createState() => _List_ColorsState();
}

class _List_ColorsState extends State<List_Colors> {
  int CurrentIndex = 0;

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
                CurrentIndex = index; //2
                BlocProvider.of<Notes_add_Cubit>(context).color =
                    kColors[index];
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

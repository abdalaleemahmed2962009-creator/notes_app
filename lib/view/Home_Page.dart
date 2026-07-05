import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/Show_Notes_Cubit/notes_Show_cubit.dart';

import '../widget/Add_Note_bottom.dart';
import '../widget/Noting _List.dart';
import '../widget/custom_icon.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();

}
class _HomePageState extends State<HomePage> {
  @override
  void initState() {
   BlocProvider.of<Notes_Show_Cubit>(context).Shownote();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [CustomIcon(shapeicon:Icons.search)],
        title: Text(
          "Notes",
          style: TextStyle(color: Colors.white, fontSize: 27),
        ),
      ),
      body: Noting_List(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff53EFD9),
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32),

              ),
              context: context, builder: (context){
            return AddNote();
          });
        },
        child: Icon(Icons.add,color: Colors.black,),
      ),
    );
  }
}

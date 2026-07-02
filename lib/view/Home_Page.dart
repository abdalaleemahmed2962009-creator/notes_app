import 'package:flutter/material.dart';

import '../widget/Noting _List.dart';
import '../widget/custom_icon.dart';
import '../widget/home_body.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          CustomIcon()
        ],
        title: Text("Notes",style: TextStyle(
          color : Colors.white,
          fontSize: 27,

        ),),
      ),
      body:Noting_List(),

    );
  }
}

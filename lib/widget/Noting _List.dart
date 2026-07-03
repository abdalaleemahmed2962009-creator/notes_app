import 'package:flutter/material.dart';
import 'package:notes/widget/Card.dart';


class Noting_List extends StatelessWidget {
  const Noting_List({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:23),
      child: ListView.builder(
          itemBuilder: (context , index){
        return HomeBody();
      }
      ),
    );
  }
}

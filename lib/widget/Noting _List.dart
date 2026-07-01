import 'package:flutter/material.dart';

import 'home_body.dart';
class Noting_List extends StatelessWidget {
  const Noting_List({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context , index){
      return HomeBody();
    }
    );
  }
}

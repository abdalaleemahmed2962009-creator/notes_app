import 'package:flutter/material.dart';

import 'package:notes/widget/custom_icon.dart';
import 'package:notes/widget/edit_Note.dart';

class EditingPage extends StatelessWidget {
  const EditingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Edit Note"),
        actions: [CustomIcon(shapeicon: Icons.check)],
      ),
      body: EditNote(),
    );
  }
}

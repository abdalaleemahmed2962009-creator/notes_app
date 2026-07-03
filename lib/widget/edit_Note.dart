import 'package:flutter/material.dart';
import 'package:notes/widget/Custom_%20textfield.dart';
class EditNote extends StatelessWidget {
  const EditNote({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
        child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7,vertical: 9),
    child: SingleChildScrollView(
      child: Column(
      children: [
      Padding(
      padding: const EdgeInsets.only(
      top: 40,
      bottom: 14,
      left: 6,
      right: 6,
      ),
      child: CustomFormTextfield(title: 'Title '),
      ),
      Padding(
      padding: const EdgeInsets.only(bottom: 14, left: 6, right: 6),
      child: CustomFormTextfield(

      title: 'Content',
      maxlines: 6 ,
      ),
      )
      ],
    )

    )
    )
    );

  }
}

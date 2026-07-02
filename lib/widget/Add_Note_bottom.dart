import 'package:flutter/material.dart';
import 'package:notes/widget/Custom_%20textfield.dart';
import 'package:notes/widget/Custom_Countainer.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7,vertical: 9),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 40,
                bottom: 14,
                left: 6,
                right: 6,
              ),
              child: CustomTextfield(title: 'Title '),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 14, left: 6, right: 6),
              child: CustomTextfield(

                title: 'Content',
             maxlines: 6 ,
                ),
            ),
            SizedBox(
              height: 28,
            ),
            CustomCountainer(name: "Add")

          ],
        ),
      ),
    );
  }
}

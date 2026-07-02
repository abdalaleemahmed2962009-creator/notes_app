import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes/widget/Custom_%20textfield.dart';
import 'package:notes/widget/Custom_Countainer.dart';
import 'package:notes/widget/custom_icon.dart';
class EditingPage extends StatelessWidget {
  const EditingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Edit Note"),
        actions: [
          CustomIcon(shapeicon: Icons.check),
        ],
      ),
   body:  Container(
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



         ],
       ),
     ),
   )
    );
  }
}

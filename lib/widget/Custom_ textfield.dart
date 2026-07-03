import 'package:flutter/material.dart';

class CustomFormTextfield extends StatelessWidget {
  CustomFormTextfield({
    required this.title,
    this.onsave,
    this.maxlines=1
  });
final int maxlines ;
  final String title;


  Function(String?)?  onsave;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (data) {

        if(data?.isEmpty??true ){
          return "لزم تدخل البيانات ";
        }
      },

      cursorColor: Color(0xff53EFD9),
maxLines:maxlines ,
      onSaved: onsave,
      decoration: InputDecoration(
        hintText: title,

        hintStyle: TextStyle(color: Color(0xff53EFD9)),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(8),
        ),
        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
      ),
    );
  }
}

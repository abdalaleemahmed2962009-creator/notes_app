
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
class CustomCountainer extends StatelessWidget {
  CustomCountainer({super.key,required this.name, this.ontap});
  String name ;
  VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:ontap ,
      child: Container(

        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Color(0xff53EFD9),
          borderRadius: BorderRadius.circular(8),

        ),
        child:  Center(
          child: Text(name,style: TextStyle(
            fontSize: 20,
            color:Colors.black,
          ),),
        ),
      ),
    );
  }
}
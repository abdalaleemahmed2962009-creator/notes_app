import 'package:flutter/material.dart';
import 'package:notes/view/editing_page.dart';
import 'package:notes/view/editing_page.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return
      GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return EditingPage();
          }));
        },
        child: Container(
          margin: EdgeInsets.only(left: 10,right: 15,top :10),
          width: 300,
          height: 200,
          decoration: BoxDecoration(
            color: Color(0xffFFCC79),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  "Flutter Tips ",
                  style: TextStyle(color: Colors.black, fontSize: 28),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    " my name is abdo , the age 19 my live and box fiv fdhdjjd  chychdtb hdthdujd dhgdf yy jjj ",
                    overflow:TextOverflow.ellipsis ,
                    maxLines: 3,
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.delete, color: Colors.black, size: 38),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12,top: 26),
                child: Text(
                  "May 21 ,2022",
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ),
            ],
          ),

            ),
      );
  }
}

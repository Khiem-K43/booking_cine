import 'dart:html';
import 'package:flutter/material.dart';
class MovieButtonstate extends StatefulWidget {
  final int index;
  MovieButtonstate(this.index);
  @override
  State<MovieButtonstate> createState() => _MovieButtonstateState(index);
}
class _MovieButtonstateState extends State<MovieButtonstate> {
  bool ishover=false;
  final int index;
  _MovieButtonstateState(this.index);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
          child: MouseRegion(
          onEnter: (f){
            setState(() {
              ishover=true;
            });
          },
          onExit: (f){
            setState(() {
              ishover=false;
            });
          },
          child: Icon(icons[index],color: ishover?Colors.black:Colors.white,size: 30)
        ),
          onPressed: (){
            showDialog(
              context: context, 
              builder: (context)=>AlertDialog(
                title: Text("Thông báo"),
                content: Text("Chức năng đang được cập nhật"),
                actions: [TextButton(child:Text("OK"),onPressed: () =>Navigator.pop(context))],
              )
            );
          }, 
          style: ElevatedButton.styleFrom(
                    backgroundColor: ishover ?Colors.blue :Color(0xFF292B37),
                    foregroundColor: ishover ?Colors.blue :Color(0xFF292B37),
                    shape: RoundedRectangleBorder( 
                      borderRadius: BorderRadius.circular(ishover?30:20)),
                    padding: EdgeInsets.all(ishover?30:20) 
          )
      );
  }
}
List<IconData>icons=[
  Icons.bookmark,
  Icons.share,
  Icons.home,
  Icons.download
];



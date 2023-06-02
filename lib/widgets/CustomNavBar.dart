import 'package:flutter/material.dart';

class CustomNarbar extends StatelessWidget {
  const CustomNarbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Color(0xFF292B37),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {showDialog(
              context: context, 
              builder: (context)=>AlertDialog(
                title: Text("Thông báo"),
                content: Text("Chức năng đang được cập nhật"),
                actions: [TextButton(child:Text("OK"),onPressed: () =>Navigator.pop(context))],
              )
            );},
            child: Icon(
              Icons.home,
              size: 35,
              color: Colors.white,
              ),
            ),
          InkWell(
            onTap: () {showDialog(
              context: context, 
              builder: (context)=>AlertDialog(
                title: Text("Thông báo"),
                content: Text("Chức năng đang được cập nhật"),
                actions: [TextButton(child:Text("OK"),onPressed: () =>Navigator.pop(context))],
              )
            );},
            child: Icon(
              Icons.category,
              size: 35,
              color: Colors.white,
              ),
            ),
          InkWell(
            onTap: () {showDialog(
              context: context, 
              builder: (context)=>AlertDialog(
                title: Text("Thông báo"),
                content: Text("Chức năng đang được cập nhật"),
                actions: [TextButton(child:Text("OK"),onPressed: () =>Navigator.pop(context))],
              )
            );},
            child: Icon(
              Icons.favorite_border,
              size: 35,
              color: Colors.white,
              ),
            ),
          InkWell(
            onTap: () {showDialog(
              context: context, 
              builder: (context)=>AlertDialog(
                title: Text("Thông báo"),
                content: Text("Chức năng đang được cập nhật"),
                actions: [TextButton(child:Text("OK"),onPressed: () =>Navigator.pop(context))],
              )
            );},
            child: Icon(
              Icons.person,
              size: 35,
              color: Colors.white,
              ),
            ),
        ],
      ),
    );
  }
}
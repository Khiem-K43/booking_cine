import 'package:flutter/material.dart';

class UpcomingWidget extends StatelessWidget {
  const UpcomingWidget({super.key});

  @override
  Widget build(BuildContext context) { 
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Phim sắp chiếu", 
               style: TextStyle(
                 color: Colors.white,
                 fontSize: 25,
                 fontWeight: FontWeight.w500)
             ),
          ],
        ),
        ),
        SizedBox(height: 15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for(int i = 1; i < 8; i++)
            Padding(padding: EdgeInsets.only(left: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: InkWell(
                onTap: (){Navigator.pushNamed(context, "movie");},
                child: Image.asset(
                "images/pic$i.jpg",
                 height: 150, 
                 width: 220, 
                 fit: BoxFit.cover,
                 ),
              ),
            ),
            ),
          ],),
        ),
      ],
    );
  }
}
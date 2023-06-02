import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/MoviePage.dart';

class RecommendWidget extends StatelessWidget {
  const RecommendWidget({super.key});

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
                "Thịnh hành",
                style: TextStyle(
                  color: Colors.white, 
                  fontSize: 25, 
                  fontWeight: FontWeight.w500)
                  ),
            ],
          ),
          ),
          SizedBox(height: 15),
          SingleChildScrollView(scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for(int i = 0; i <= movie_descrip.length-1; i++)
              InkWell(onTap: (){Navigator.pushNamed(context, "movie$i");},
                child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "images/movie$i.jpg", 
                  height: 100, 
                  width: 150,
                  fit: BoxFit.cover,
                  ),
                ),
              )
            ]
          )
    )
      ],
          );
      
  }
}
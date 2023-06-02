import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/pages/HomePage.dart';
import 'package:flutter_application_1/pages/MoviePage.dart';


void main(){
    runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState(){
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF0F111D)
      ),
      routes:{
        "/" :(context) => HomePage(),
        "movie" : (context) => MoviePage(movie_descrip.length-1),
        for(int i=0;i<movie_descrip.length;i++)
          "movie$i" : (context) => MoviePage(i)
      } ,
    );
    
  }
}





import 'package:flutter/material.dart';
import 'Buttonstate.dart';

class MoviePageButtons extends StatefulWidget {
  const MoviePageButtons({super.key});
  @override
  State<MoviePageButtons> createState() => _MoviePageButtonsState();
}

class _MoviePageButtonsState extends State<MoviePageButtons> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(4, (int i) {
        return MovieButtonstate(i);
      }),
    );
  }
}

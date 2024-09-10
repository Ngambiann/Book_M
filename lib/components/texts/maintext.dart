import 'package:flutter/material.dart';

class MainText extends StatelessWidget {
  final String  textmain;
  const MainText({super.key,required this.textmain});

  @override
  Widget build(BuildContext context) {
    return Text(
      textmain,
      style:const TextStyle(
        color: Color.fromARGB(255, 185, 85, 30),
        fontWeight: FontWeight.w500,
        fontSize: 24,
      ) ,
    );
  }
}
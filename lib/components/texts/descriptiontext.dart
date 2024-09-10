import 'package:flutter/material.dart';

class Descriptiontext extends StatelessWidget {
  final String descripitonText;
  const Descriptiontext({super.key,required this.descripitonText});

  @override
  Widget build(BuildContext context) {
    return  Text(
      descripitonText,
      style:  TextStyle(
        color: Colors.grey.shade900,
        fontWeight: FontWeight.w200,
        fontSize: 16,
      ),


    );
  }
}
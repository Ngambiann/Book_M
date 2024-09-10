import 'package:flutter/material.dart';

class MyCategoriesbuttons extends StatelessWidget {
  final String categoryName;
  // ignore: prefer_typing_uninitialized_variables
  final  onPressed;
  const MyCategoriesbuttons(
      {super.key, required this.categoryName, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: const ButtonStyle(
            backgroundColor:
                WidgetStatePropertyAll(Color.fromARGB(255, 193, 99, 36))),
        onPressed:onPressed ,
        child: Text(
          categoryName,
          style: const TextStyle(color: Colors.black87),
        ));
  }
}


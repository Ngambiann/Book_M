import 'package:flutter/material.dart';

class MyCategoriesbuttons extends StatelessWidget {
  final String categoryName;
  final Function onSelected;
  const MyCategoriesbuttons(
      {super.key, required this.categoryName, required this.onSelected});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: const ButtonStyle(
            backgroundColor:
                WidgetStatePropertyAll(Color.fromARGB(255, 193, 99, 36))),
        onPressed: onSelected(),
        child: Text(
          categoryName,
          style: const TextStyle(color: Colors.black87),
        ));
  }
}


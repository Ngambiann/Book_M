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

class MyCategoriesCards extends StatelessWidget {
  final String categoryName;

  final Function onSelected;

  const MyCategoriesCards(
      {super.key, required this.categoryName, required this.onSelected});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: Container(
            width: 400,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: const Color.fromARGB(255, 193, 99, 36)),
            child: TextButton(
              child: Text(categoryName, textAlign: TextAlign.center),
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }
}

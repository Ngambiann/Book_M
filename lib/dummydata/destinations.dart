import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String nameofPlace;
  final String location;
  final String imagePath;
  final Function onSelected;
  final String rating;
  final String category;

  const MyCard(
      {super.key,
      required this.nameofPlace,
      required this.imagePath,
      required this.location,
      required this.onSelected,
      required this.rating,
      required this.category});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Column(
        children: [
          Image.asset(imagePath),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(30)
            ),
            
            child: Column(
              children: [
                Text(nameofPlace),
                Text(location),
                Row(
                  children: [
                    SizedBox.shrink(
                      child: Text(rating),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 4,
                      width: 4,
                      decoration: BoxDecoration(
                        color: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .color!
                            .withOpacity(0.5),
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox.square(
                      child: Text(category),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

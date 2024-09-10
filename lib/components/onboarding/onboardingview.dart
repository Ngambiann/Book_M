import 'package:bookmark/components/texts/descriptiontext.dart';
import 'package:bookmark/components/texts/maintext.dart';
import 'package:flutter/material.dart';

class Onboardingview extends StatelessWidget {
  final String imagePath;
  final String catchLine;
  final String descripiton;

  const Onboardingview(
      {super.key,
      required this.imagePath,
      required this.catchLine,
      required this.descripiton});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          alignment: Alignment.center,
          child: Image.asset(
            imagePath,
            height: 400,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              MainText(textmain: catchLine),
              const SizedBox(
                height: 10,
              ),
              Descriptiontext(descripitonText: descripiton)
            ],
          ),
        )
      ],
    );
  }
}




import 'package:bookmark/pages/screens/privacypolicy.dart';
import 'package:bookmark/pages/views/profile.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(PhosphorIconsRegular.arrowCircleLeft)),
                OutlinedButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                        Color.fromARGB(135, 238, 174, 129)),
                  ),
                  child: const Text(
                    "Rate This App",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            const Divider(
              thickness: 0.5,
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "BookMark",
              style: TextStyle(
                  color: Color.fromARGB(221, 237, 99, 7),
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
                "Discover and enjoy our beautiful country while supporting local business around you.Know about all upcoming events and shows in the country as well as ticket-buy links.We provide you with all the information you need about the hidden gems including average budget for the destination.Send tiktok videos to our Bookmark and have all the information you need on the loaction.Save your hidden gems in your Bookmark collections for easy access  offline.For business owners,add your own business and precise location or if it already exists you can request to claim ownership to manage and attract more clients."),
            const SizedBox(height: 250),
            Row(
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Privacypolicy()));

                    },
                    child: const Text(
                      "Privacy Policy",
                      style: TextStyle(color: Color.fromARGB(221, 237, 99, 7)),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}

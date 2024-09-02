import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class MyCard extends StatefulWidget {
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
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  bool _isFavourite = false;
  bool _isBookmarked = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.all(12),
      elevation: 0,
      shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(40)),
      child: Column(
        children: [
          Stack(
            children: [
//image
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Image.asset(
                      widget.imagePath,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
//category tag

              Align(
                alignment: Alignment.topLeft,
                child: TextButton.icon(
                  style: const ButtonStyle(
                      side: WidgetStatePropertyAll(BorderSide(
                          width: 1,
                          color: Colors.black26,
                          strokeAlign: BorderSide.strokeAlignCenter))),
                  onPressed: () {},
                  label: Text(
                    widget.category,
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
//Favourites button

              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      _isFavourite = !_isFavourite;
                    });
                  },
                  icon: (_isFavourite
                      ? const Icon(PhosphorIconsFill.heart)
                      : const Icon(PhosphorIconsRegular.heart)),
                  color: const Color.fromARGB(255, 231, 110, 24),
                ),
              )
            ],
          ),
// destination name
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.nameofPlace,
                        style: const TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 20),
                        textAlign: TextAlign.start,
                      ),
//location text button
                      Text.rich(TextSpan(children: <TextSpan>[
                        TextSpan(
                            text: widget.location,
                            style: const TextStyle(
                                color: Colors.black45,
                                fontWeight: FontWeight.w400,
                                fontSize: 12),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                          title: const Text(
                                            'Open with:',
                                            textAlign: TextAlign.center,
                                          ),
                                          actions: [
                                            Column(
                                              children: [
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    const SizedBox(
                                                      width: 30,
                                                    ),
                                                    TextButton(
                                                        onPressed: () {},
                                                        child: Image.asset(
                                                            width: 60,
                                                            height: 60,
                                                            'assets/images/google-maps.png')),
                                                    TextButton(
                                                        onPressed: () {},
                                                        child: Image.asset(
                                                            width: 70,
                                                            height: 70,
                                                            'assets/images/apple-maps.png')),
                                                    const SizedBox(
                                                      width: 30,
                                                    ),
                                                  ],
                                                ),
                                                TextButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: const Text(
                                                      "cancel",
                                                      style: TextStyle(
                                                          color:
                                                              Colors.black45),
                                                    ))
                                              ],
                                            ),
                                          ],
                                        ));
                              })
                      ])),
//five-star rating

                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color.fromARGB(255, 241, 160, 85),
                          ),
                          width: 40,
                          height: 20,
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                widget.rating,
                                textAlign: TextAlign.center,
                              ),
                              const Icon(
                                PhosphorIconsFill.star,
                                size: 11,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 150,
                      ),
                    ],
                  ),
                ),
              ),
//save-Bookmark button
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      _isBookmarked = !_isBookmarked;
                    });
                  },
                  icon: (_isBookmarked
                      ? const Icon(PhosphorIconsFill.bookmarkSimple)
                      : const Icon(PhosphorIconsRegular.bookmarkSimple)),
                  color: Colors.black,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

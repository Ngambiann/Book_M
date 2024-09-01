import 'package:bookmark/pages/views/authviews/login.dart';
import 'package:bookmark/pages/screens/about.dart';

import 'package:bookmark/pages/screens/get_help.dart';

import 'package:bookmark/pages/screens/settings.dart';

import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:share_plus/share_plus.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
//switch account
  void switchAccount() {}

//share app
  void shareapp() {
    Share();
  }

//logout
  void logout() {
    GoogleSignIn().signOut();
    FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const Login()));
  }

//pageview
  bool isLastPage = false;
  final _pageController = PageController(initialPage: 2);

  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
//Appbar
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(PhosphorIconsRegular.userGear),
          onPressed: () {
            scaffoldKey.currentState?.openDrawer();
          },
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        ),
        //headerbuttons
        title: Row(
          children: [
            TextButton(
              onPressed: () {},
              child: const Text('Favourites',
                  style: TextStyle(color: Color.fromARGB(255, 169, 62, 23))),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Bookmarks',
                  style: TextStyle(color: Color.fromARGB(255, 169, 62, 23))),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),

//drawer
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(136, 238, 134, 61),
        child: ListView(
          //padding: const EdgeInsets.all(25),
          children: [
            const SizedBox(
              height: 100,
            ),

            ListTile(
              leading: TextButton.icon(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Settings()));
                  },
                  icon: const Icon(PhosphorIconsRegular.gear),
                  label: const Text("Settings",
                      style: TextStyle(color: Colors.black))),
            ),
            //share
            ListTile(
              leading: TextButton.icon(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog.adaptive(
                              icon: const Icon(PhosphorIconsBold.share),
                              actions: [
                                TextButton(
                                    onPressed: shareapp,
                                    child: const Text(
                                      'share',
                                      style: TextStyle(color: Colors.black38),
                                    )),
                                TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text(
                                      'cancel',
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 169, 62, 23)),
                                    )),
                              ],
                            ));
                  },
                  icon: const Icon(PhosphorIconsRegular.shareNetwork),
                  label: const Text("Share app",
                      style: TextStyle(color: Colors.black))),
            ),
            //Get Help
            ListTile(
              leading: TextButton.icon(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const GetHelp()));
                  },
                  icon: const Icon(PhosphorIconsRegular.question),
                  label: const Text("Get Help",
                      style: TextStyle(color: Colors.black))),
            ),
            //About
            ListTile(
              leading: TextButton.icon(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const About()));
                  },
                  icon: const Icon(PhosphorIconsRegular.info),
                  label: const Text("About",
                      style: TextStyle(color: Colors.black))),
            ),
            //switch account
            ListTile(
              leading: TextButton.icon(
                  onPressed: switchAccount,
                  icon: const Icon(PhosphorIconsRegular.info),
                  label: const Text("Switch Account",
                      style: TextStyle(color: Colors.black))),
            ),
            //Log_out
            ListTile(
              leading: TextButton.icon(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog.adaptive(
                              icon: const Icon(
                                  PhosphorIconsBold.heartStraightBreak),
                              title:
                                  const Text('Are you sure you want to leave?'),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text(
                                      'cancel',
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 169, 62, 23)),
                                    )),
                                TextButton(
                                    onPressed: logout,
                                    child: const Text(
                                      'log out',
                                      style: TextStyle(color: Colors.black38),
                                    ))
                              ],
                            ));
                  },
                  icon: const Icon(PhosphorIconsRegular.signOut),
                  label: const Text(
                    "Log out",
                    style: TextStyle(color: Colors.black),
                  )),
            )
          ],
        ),
      ),

//body
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            isLastPage = index == 2;
          });
        },
        scrollDirection: Axis.horizontal,
        children: [
          ListView(
            padding: const EdgeInsets.all(12),
            children: const [
              MyCards(
                tagLine: 'Favourites',
                imagePath: 'assets/images/artgallery.jpg',
              )
            ],
          ),
          ListView(
            padding: const EdgeInsets.all(12),
            children: const [
              MyCards(
                  imagePath: 'assets/images/artgallery.jpg',
                  tagLine: 'Bookmarks')
            ],
          ),
        ],
      ),
    );
  }
}

class MyCards extends StatelessWidget {
  final String tagLine;
  final String imagePath;
  const MyCards({
    super.key,
    required this.imagePath,
    required this.tagLine,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset(imagePath),
          Text(tagLine,style: const TextStyle(color: Colors.amber),)
        ],
      ),
    );
  }
}
//scroll indicator below them
//page view ting

import 'package:bookmark/pages/views/authviews/login.dart';
import 'package:bookmark/pages/screens/about.dart';
import 'package:bookmark/pages/screens/favourites.dart';
import 'package:bookmark/pages/screens/get_help.dart';

import 'package:bookmark/pages/screens/settings.dart';
import 'package:bookmark/pages/screens/bookmark.dart';

import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:share_plus/share_plus.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with TickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  void switchAccount() {}
  void shareapp() {
    Share();
  }

  void logout() {
    FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const Login()));
  }

  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(PhosphorIconsRegular.userGear),
          onPressed: () {
            scaffoldKey.currentState?.openDrawer();
          },
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        ),
        bottom: TabBar(
            isScrollable: true,
            controller: tabController,
            tabAlignment: TabAlignment.center,
            tabs: <Widget>[
              TextButton.icon(
                onPressed: () {
                  tabController.animation;
                  
                },
                label: const Text('Favourites',
                    style: TextStyle(color: Colors.black54)),
                icon: const Icon(PhosphorIconsRegular.bookmarks),
              ),
              TextButton.icon(
                onPressed: () {
                  tabController.indexIsChanging;
                },
                label: const Text('Bookmarks',
                    style: TextStyle(color: Colors.black54)),
                icon: const Icon(PhosphorIconsRegular.bookmarks),
              ),
            ]),
      ),
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
      body: TabBarView(
        controller: tabController,
        children: const <Widget>[
          Center(child: Favourites()),
          Center(child: Bookmark()),
        ],
      ),
    );
  }
}

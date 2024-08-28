import 'package:bookmark/pages/authpages/login.dart';
import 'package:bookmark/pages/screens/notifications.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  void logout() {
    FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const Login()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
                        builder: (context) => const Notifications()));
                  },
                  icon: const Icon(PhosphorIconsRegular.gear),
                  label: const Text("Settings",
                      style: TextStyle(color: Colors.black))),
            ),
            //share
            ListTile(
              leading: TextButton.icon(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Notifications()));
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
                        builder: (context) => const Notifications()));
                  },
                  icon: const Icon(PhosphorIconsRegular.question),
                  label: const Text("Get Help",
                      style: TextStyle(color: Colors.black))),
            ),
            //About
            ListTile(
              leading: TextButton.icon(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Notifications()));
                  },
                  icon: const Icon(PhosphorIconsRegular.info),
                  label: const Text("About",
                      style: TextStyle(color: Colors.black))),
            ),
            //Log_out
            ListTile(
              leading: TextButton.icon(
                  onPressed: logout,
                  icon: const Icon(PhosphorIconsRegular.signOut),
                  label: const Text(
                    "Log out",
                    style: TextStyle(color: Colors.black),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
//will have a button to take you to auth-nav wrapper
//bookmarks-nav wrapper
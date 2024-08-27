import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class Profile extends StatefulWidget {


  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
    void logout(){
FirebaseAuth.instance.signOut();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: IconButton(
              onPressed: logout,
               icon: const Icon(PhosphorIconsRegular.signOut))
              
              ),
    );
  }
}
//will have a button to take you to auth-nav wrapper
//bookmarks-nav wrapper
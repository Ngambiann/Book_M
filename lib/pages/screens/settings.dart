import 'package:bookmark/pages/screens/changepassword.dart';
import 'package:bookmark/pages/views/authviews/signup.dart';
import 'package:bookmark/theme/darkmode.dart';
import 'package:bookmark/theme/lightmode.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:provider/provider.dart';

// ignore: camel_case_types
class accountSettings extends StatefulWidget {
  const accountSettings({super.key});

  @override
  State<accountSettings> createState() => _NotificationsState();
}

class _NotificationsState extends State<accountSettings> {
  //change password
  TextEditingController currentPasswordcontroller = TextEditingController();
  TextEditingController newPasswordcontroller = TextEditingController();
  TextEditingController emailAddressController = TextEditingController();

  Future<String> updatePassword() async {
    try {
      User? user = FirebaseAuth.instance.currentUser;

      await user?.updatePassword(newPasswordcontroller.text);

      return 'Password changed successfully.';
    } catch (e) {
      return 'Error changing password: $e';
    }
  }

  void displaymessagetoUser() {
    (changePassword(currentPasswordcontroller.text.trim(),
        newPasswordcontroller.text.trim(), emailAddressController.text.trim()));
  }

  void addAccount() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const Signup()));
  }

  //toggle on && off
  bool on = true;
  bool onDm = true;
  bool onLm = true;
  bool onAn = true;
  bool onNa = true;
  bool onTa = true;
//delete account
  void deleteAccount() async {
    await FirebaseAuth.instance.currentUser!.delete();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('settings'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: ListView(
            children: [
              const Text('Theme',
                  style: TextStyle(
                      color: Color.fromARGB(221, 237, 99, 7),
                      fontSize: 24,
                      fontWeight: FontWeight.bold)),
//match device setting
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Match Device Setting'),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          on = !on;
                          Provider.of<ThemeProv>(context, listen: false)
                              .Toggletheme();
                        });
                      },
                      icon: Icon(
                          on
                              ? PhosphorIconsRegular.toggleLeft
                              : PhosphorIconsRegular.toggleRight,
                          color: const Color.fromARGB(255, 169, 62, 23)))
                ],
              ),
//Dark mode setting
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Dark mode'),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          onDm = !onDm;
                          Provider.of<ThemeProv>(context, listen: false)
                              .Toggletheme();
                        });
                      },
                      icon: Icon(
                          onDm
                              ? PhosphorIconsRegular.toggleLeft
                              : PhosphorIconsRegular.toggleRight,
                          color: const Color.fromARGB(255, 169, 62, 23)))
                ],
              ),
//Light mode setting
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Light mode'),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          onLm = !onLm;
                          Provider.of<ThemeProv>(context, listen: false)
                              .Toggletheme();
                        });
                      },
                      icon: Icon(
                          onLm
                              ? PhosphorIconsRegular.toggleLeft
                              : PhosphorIconsRegular.toggleRight,
                          color: const Color.fromARGB(255, 169, 62, 23)))
                ],
              ),
              const Text('Notifications',
                  style: TextStyle(
                      color: Color.fromARGB(221, 237, 99, 7),
                      fontSize: 24,
                      fontWeight: FontWeight.bold)),
//all notifications
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('All notifications'),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          onAn = !onAn;
                        });
                      },
                      icon: Icon(
                          onAn
                              ? PhosphorIconsRegular.toggleLeft
                              : PhosphorIconsRegular.toggleRight,
                          color: const Color.fromARGB(255, 169, 62, 23)))
                ],
              ),
//New places/events alerts
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('New gems/events alert'),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          onNa = !onNa;
                        });
                      },
                      icon: Icon(
                          onNa
                              ? PhosphorIconsRegular.toggleLeft
                              : PhosphorIconsRegular.toggleRight,
                          color: const Color.fromARGB(255, 169, 62, 23)))
                ],
              ),
//trending places/events/shows
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Trending alerts'),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          onTa = !onTa;
                        });
                      },
                      icon: Icon(
                        onTa
                            ? PhosphorIconsRegular.toggleLeft
                            : PhosphorIconsRegular.toggleRight,
                        color: const Color.fromARGB(255, 169, 62, 23),
                      ))
                ],
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Account',
                      style: TextStyle(
                          color: Color.fromARGB(221, 237, 99, 7),
                          fontSize: 24,
                          fontWeight: FontWeight.bold)),
//add account
                  TextButton.icon(
                    onPressed: addAccount,
                    label: const Text(
                      'Add Account',
                      style: TextStyle(color: Colors.black),
                    ),
                    icon: const Icon(PhosphorIconsRegular.userPlus,
                        color: Color.fromARGB(255, 169, 62, 23)),
                  ),

//change password
                  TextButton.icon(
                    label: const Text("Change Password",
                        style: TextStyle(color: Colors.black)),
                    icon: const Icon(PhosphorIconsRegular.swap,
                        color: Color.fromARGB(255, 169, 62, 23)),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: const Text("Change password"),
                                actions: [
                                  TextField(
                                    controller: emailAddressController,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(25)),
                                      hintText: ("Email Address"),
                                    ),
                                  ),
                                  TextField(
                                    controller: currentPasswordcontroller,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(25)),
                                      hintText: ("Old Password"),
                                    ),
                                  ),
                                  TextField(
                                    controller: newPasswordcontroller,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(25)),
                                      hintText: ("New Password"),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      TextButton(
                                        child: const Text('Cancel',
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 169, 62, 23))),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                      TextButton(
                                          onPressed: updatePassword,
                                          child: const Text('Change',
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 169, 62, 23))))
                                    ],
                                  ),
                                ],
                              ));
                    },
                  ),
//Delete account
                  TextButton.icon(
                    label: const Text(
                      'Delete account',
                      style: TextStyle(color: Colors.black45),
                    ),
                    icon: const Icon(PhosphorIconsRegular.userMinus,
                        color: Color.fromARGB(255, 169, 62, 23)),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: const Text("Delete Account?!"),
                                content: const Text(
                                    '''If you select Delete we will delete your account on our server.
                    
                                           Your app data will also be deleted and you won't be able to retrieve it.
                    
                                           '''),
                                actions: [
                                  TextButton(
                                    child: const Text('Cancel',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 169, 62, 23))),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                  TextButton(
                                      onPressed: deleteAccount,
                                      child: const Text('Delete',
                                          style: TextStyle(
                                              color: Colors.black38))),
                                ],
                              ));
                    },
                  )
                ],
              ),
            ],
          )),
    );
  }
}

class ThemeProv with ChangeNotifier {
  ThemeData _themeData = lightMode;
  ThemeData get themeData => _themeData;
  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void Toggletheme() {
    if (_themeData == lightMode) {
      themeData == darkMode;
    } else {
      themeData == lightMode;
    }
  }
}

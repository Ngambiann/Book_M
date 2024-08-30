import 'package:bookmark/pages/screens/changepassword.dart';

import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _NotificationsState();
}

class _NotificationsState extends State<Settings> {
  //change password
  TextEditingController currentPasswordcontroller = TextEditingController();
  TextEditingController newPasswordcontroller = TextEditingController();
  TextEditingController confirmNewPasswordcontroller = TextEditingController();
  TextEditingController emailAddressController = TextEditingController();
  void displaymessagetoUser() {
    (changePassword(currentPasswordcontroller.text.trim(),
        newPasswordcontroller.text.trim(), emailAddressController.text.trim()));
  }

  //toggle on && off
  bool on = true;
  bool onDm = true;
  bool onLm = true;
  bool onAn = true;
  bool onNa = true;
  bool onTa = true;
//delete account
  void deleteAccount() async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
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
                    onPressed: () {},
                    label: const Text(
                      'Add Account',
                      style: TextStyle(color: Colors.black),
                    ),
                    icon: const Icon(PhosphorIconsRegular.userPlus,
                        color: Color.fromARGB(255, 169, 62, 23)),
                  ),

                  //switch account
                  TextButton.icon(
                    onPressed: () {},
                    label: const Text('Switch Account',
                        style: TextStyle(color: Colors.black)),
                    icon: const Icon(PhosphorIconsRegular.userSwitch,
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
                                  TextField(
                                    controller: confirmNewPasswordcontroller,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(25)),
                                      hintText: ("Confirm new Password"),
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
                                          onPressed: () {},
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

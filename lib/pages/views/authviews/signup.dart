// ignore_for_file: use_build_context_synchronously

import 'package:bookmark/pages/views/authviews/login.dart';
import 'package:bookmark/pages/screens/navscreens.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignInState();
}

class _SignInState extends State<Signup> {
  



  final TextEditingController emailAddressController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController usernameController = TextEditingController();

  bool hideTextp = true;
  //for password
  bool hideTextcp = true;
  //for confirm password
  void displayMessageToUser(String message, BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text(
                message,
                style: const TextStyle(
                    color: Color.fromARGB(255, 169, 62, 23), fontSize: 15),
              ),
            ));
  }

//db auth
//if passwords don't match
  Future<void> signup() async {
    if (passwordController.text != confirmPasswordController.text) {
      displayMessageToUser("Passwords don't match", context);
    }
    //if passwords do match
    else {
      //try creating user
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
                email: emailAddressController.text,
                password: passwordController.text);
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const Navscreens()));
//extra user details
        await FirebaseFirestore.instance
            .collection('users')
            .doc(userCredential.user!.uid)
            .set({
          'email': emailAddressController.text.trim(),
          'password': passwordController.text.trim(),
        });
      } on FirebaseException catch (e) {
        displayMessageToUser(e.code, context);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(actions: [
          //skip button
          TextButton(
              style: const ButtonStyle(
                  backgroundColor:
                      WidgetStatePropertyAll(Color.fromARGB(255, 169, 62, 23))),
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const Navscreens()));
              },
              child:
                  const Text('Explore as Guest', style: TextStyle(color: Colors.white70)))
        ]),
        body: Padding(
          padding: const EdgeInsets.all(35),
          child: ListView(
            children: [
              const SizedBox(
                height: 25,
              ),
              //Text
              Container(
                alignment: AlignmentDirectional.topStart,
                child: const Text(
                  'Get Started!',
                  style: TextStyle(
                      fontSize: 35, color: Color.fromARGB(255, 169, 62, 23)),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              //Email Address entry
              TextField(
                controller: emailAddressController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)),
                  hintText: ("Email"),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              //Password entry
              TextField(
                controller: passwordController,
                obscureText: hideTextp,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)),
                    hintText: "Password",
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            hideTextp = !hideTextp;
                          });
                        },
                        icon: Icon(hideTextp
                            ? PhosphorIconsRegular.eyeClosed
                            : PhosphorIconsRegular.eye))),
              ),
              const SizedBox(
                height: 10,
              ),
              //Confirm password entry
              TextField(
                  controller: confirmPasswordController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)),
                      hintText: " confirm password",
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              hideTextcp = !hideTextcp;
                            });
                          },
                          icon: Icon(hideTextcp
                              ? PhosphorIconsRegular.eyeClosed
                              : PhosphorIconsRegular.eye))),
                  obscureText: hideTextcp),
              const SizedBox(
                height: 10,
              ),
              //terms&&conditions
         
              //sign up button
              ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                          Color.fromARGB(255, 169, 62, 23))),
                  onPressed: signup,
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.white70),
                  )),
              const SizedBox(
                height: 10,
              ),
              //divider
              const Row(children: [
                Expanded(child: Divider(thickness: 0.5)),
                Spacer(),
                Text("OR", style: TextStyle(fontSize: 15, color: Colors.black)),
                Spacer(),
                Expanded(child: Divider(thickness: 0.5)),
              ]),
              const SizedBox(
                height: 10,
              ),
              //with google
              ElevatedButton.icon(
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                        Color.fromARGB(136, 238, 134, 61))),
                onPressed: () {},
                label: const Text("Sign up with Google",
                    style: TextStyle(color: Colors.white70)),
                icon: const Icon(PhosphorIconsRegular.googleLogo),
              ),
              //with tiktok
              ElevatedButton.icon(
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                        Color.fromARGB(136, 238, 134, 61))),
                onPressed: () {},
                label: const Text("Sign up with Tiktok",
                    style: TextStyle(color: Colors.white70)),
                icon: const Icon(PhosphorIconsRegular.tiktokLogo),
              ),
              //with IG
              ElevatedButton.icon(
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                        Color.fromARGB(136, 238, 134, 61))),
                onPressed: () {},
                label: const Text("Sign up with instagram",
                    style: TextStyle(color: Colors.white70)),
                icon: const Icon(PhosphorIconsRegular.instagramLogo),
              ),
              const SizedBox(
                height: 40,
              ),

              Text.rich(
                textAlign: TextAlign.center,
                TextSpan(
                  text: "Already have an account?",
                  style: const TextStyle(color: Colors.black45),
                  children: <TextSpan>[
                    TextSpan(
                        text: "Login",
                        style: const TextStyle(
                            color: Colors.black87, fontWeight: FontWeight.bold),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => const Login()),
                            );
                          })
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

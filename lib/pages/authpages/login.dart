// ignore_for_file: use_build_context_synchronously

import 'package:bookmark/pages/authpages/signup.dart';
import 'package:bookmark/pages/authpages/forgotpassword.dart';
import 'package:bookmark/pages/navigation/navscreens.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool hideText = true;
  final TextEditingController emailAddressController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void displayMessageToUser(String message, BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text(message),
            ));
  }

  Future<void> login() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailAddressController.text.trim(),
          password: passwordController.text.trim());
      
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const Navscreens()));
          displayMessageToUser('Welcome back!', context);
    } on FirebaseAuthException catch (e) {
      
       displayMessageToUser(e.code, context);
      
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emailAddressController,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(45)),
                hintText: "Email",
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(45)),
                  hintText: "Password",
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          hideText = !hideText;
                        });
                      },
                      icon: Icon(hideText
                          ? PhosphorIconsRegular.eyeClosed
                          : PhosphorIconsRegular.eye))),
              obscureText: hideText,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                            Color.fromARGB(255, 169, 62, 23))),
                    onPressed: login,
                    child: const Text.rich(TextSpan(
                        text: "Login",
                        style: TextStyle(color: Colors.white70)))),
                GestureDetector(
                  onTap: () {},
                  child: Text.rich(TextSpan(
                    text: "Forgot password",
                    style: const TextStyle(
                        color: Colors.black87, fontWeight: FontWeight.bold),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Forgotpassword(),
                        ));
                      },
                  )),
                )
              ],
            ),
            Text.rich(TextSpan(
              text: "Don't have an account?",
              style: const TextStyle(color: Colors.black45),
              children: <TextSpan>[
                TextSpan(
                    text: "Sign up",
                    style: const TextStyle(
                        color: Colors.black87, fontWeight: FontWeight.bold),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Signup()));
                      })
              ],
            ))
          ],
        ),
      ),
    );
  }
}

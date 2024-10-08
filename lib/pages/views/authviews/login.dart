// ignore_for_file: use_build_context_synchronously

import 'package:bookmark/pages/views/authviews/signup.dart';
import 'package:bookmark/pages/views/authviews/forgotpassword.dart';
import 'package:bookmark/pages/screens/navscreens.dart';
import 'package:bookmark/pages/views/authviews/tiktokdemo.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  signinwithGoogle() async {
    GoogleSignInAccount? googleuser = await GoogleSignIn().signIn();
    if (googleuser == null) return;
    GoogleSignInAuthentication? googleAuth = await googleuser.authentication;
    AuthCredential userCredential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    await FirebaseAuth.instance.signInWithCredential(userCredential);
  }

  bool hideText = true;
  final TextEditingController emailAddressController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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

  Future<void> login() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailAddressController.text.trim(),
          password: passwordController.text.trim());

      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const Navscreens()));
    } on FirebaseAuthException {
      displayMessageToUser(
          'Wrong password/Email.Check credentials again', context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Padding(
        padding: const EdgeInsets.all(35.0),
        child: ListView(
          children: [
            const SizedBox(
              height: 75,
            ),
            //Text
            Container(
              alignment: AlignmentDirectional.topStart,
              child: const Text(
                'Welcome back!',
                style: TextStyle(
                    fontSize: 35, color: Color.fromARGB(255, 169, 81, 23)),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            //Email_input
            TextField(
              controller: emailAddressController,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                hintText: "Email",
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //Password_input
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)),
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
              height: 10,
            ),
            //Forgotpassword_option
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
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
                ),
                //login child
                ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                            Color.fromARGB(255, 193, 99, 36))),
                    onPressed: login,
                    child: const Text.rich(TextSpan(
                        text: "Login",
                        style: TextStyle(color: Colors.white70)))),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            //divider
            const Row(children: [
              Expanded(child: Divider(thickness: 0.5)),
              Spacer(),
              Text("Or Continue With",
                  style: TextStyle(fontSize: 12, color: Colors.black)),
              Spacer(),
              Expanded(child: Divider(thickness: 0.5)),
            ]),
            const SizedBox(
              height: 35,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
//with google
                SizedBox.square(
                    child: ElevatedButton(
                        style: const ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(
                                Color.fromARGB(133, 232, 125, 48))),
                        onPressed: signinwithGoogle,
                        child: const Icon(PhosphorIconsRegular.googleLogo))),
//with tiktok
                SizedBox.square(
                    child: ElevatedButton(
                        style: const ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(
                                Color.fromARGB(133, 230, 113, 29))),
                        onPressed: () {
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>const Tiktokdemo()));
                        },
                        child: const Icon(PhosphorIconsRegular.tiktokLogo)))
              ],
            ),

            const SizedBox(
              height: 35,
            ),

            Text.rich(
                textAlign: TextAlign.center,
                TextSpan(
                  text: "New to Bookmark?",
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

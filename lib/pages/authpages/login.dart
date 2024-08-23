import 'package:bookmark/pages/authpages/signup.dart';
import 'package:bookmark/pages/authpages/forgotpassword.dart';
import 'package:bookmark/pages/navigation/navscreens.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool hideText = true;
  final TextEditingController emailAddressController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<void> login() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailAddressController.text.trim(),
          password: passwordController.text.trim());
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Welcome back'), backgroundColor: Colors.green));
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const Navscreens()));
    } on FirebaseAuthException catch (e) {
      if (e.code == 400) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Error${e.toString()}')));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emailAddressController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(45)),
                  labelText: "Email Address",
                  prefixIcon: const Icon(Icons.email_rounded)),
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(45)),
                  labelText: "Password",
                  prefixIcon: const Icon(Icons.password_rounded),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          hideText = !hideText;
                        });
                      },
                      icon: Icon(
                          hideText ? Icons.visibility_off : Icons.visibility))),
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
              style: const TextStyle(color: Colors.black54),
              children: <TextSpan>[
                TextSpan(
                    text: "Sign up",
                    style: const TextStyle(
                      color: Colors.black87,
                    ),
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

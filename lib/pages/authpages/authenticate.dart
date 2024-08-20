import 'package:bookmark/pages/authpages/login.dart';
import 'package:bookmark/pages/mainpages/explore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({super.key});

  @override
  State<Authenticate> createState() => _SignInState();
}

class _SignInState extends State<Authenticate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(35),
        child: IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const Explore(),
              ));
            },
            icon: const Icon(Icons.skip_next)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(45)),
                  labelText: ("Email address"),
                  prefixIcon: const Icon(Icons.email)),
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(45)),
                    labelText: "password",
                    prefixIcon: const Icon(Icons.remove_red_eye_sharp)),
                obscureText: true),
            const SizedBox(
              height: 15,
            ),
            TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(45)),
                    labelText: " confirm password",
                    prefixIcon: const Icon(Icons.remove_red_eye_sharp)),
                obscureText: true),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                        Color.fromARGB(255, 136, 109, 182))),
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const Explore(),
                  ));
                },
                child: const Text.rich(TextSpan(text: "Sign Up"))),
            Text.rich(
              TextSpan(
                text: "Already have an account?",
                children: <TextSpan>[
                  TextSpan(
                      text: "Login",
                      style: const TextStyle(
                        color: Colors.deepPurpleAccent,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => const Login()),
                          );
                        })
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

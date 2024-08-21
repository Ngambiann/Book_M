import 'package:bookmark/pages/authpages/login.dart';
import 'package:bookmark/pages/subpages/navscreens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({super.key});

  @override
  State<Authenticate> createState() => _SignInState();
}

class _SignInState extends State<Authenticate> {
  final TextEditingController emailAddressController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  bool hideTextp = true;
  //for password
  bool hideTextcp = true;
  //for confirm password

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(
              style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.black54)),
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const Navscreens()));
              },
              child:
                  const Text('Skip', style: TextStyle(color: Colors.white70)))
        ],
      )),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emailAddressController,
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
              controller: passwordController,
              obscureText: hideTextp,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(45)),
                  labelText: "password",
                  prefixIcon: const Icon(Icons.password_rounded),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          hideTextp = !hideTextp;
                        });
                      },
                      icon: Icon(hideTextp
                          ? Icons.visibility_off
                          : Icons.visibility))),
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
                controller: confirmPasswordController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(45)),
                    labelText: " confirm password",
                    prefixIcon: const Icon(Icons.password_rounded),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            hideTextcp = !hideTextcp;
                          });
                        },
                        icon: Icon(hideTextcp
                            ? Icons.visibility_off
                            : Icons.visibility))),
                obscureText: hideTextcp),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.black45)),
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const Navscreens(),
                  ));
                },
                child: const Text(
                  "Sign Up",
                  style: TextStyle(color: Colors.white70),
                )),
            Text.rich(
              TextSpan(
                text: "Already have an account?",
                style: const TextStyle(color: Colors.black54),
                children: <TextSpan>[
                  TextSpan(
                      text: "Login",
                      style: const TextStyle(
                        color: Colors.black87,
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
            ),
            /*Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 200,
                  height: 200,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('images/icon2.png'),
                        fit: BoxFit.cover),
                  ),
                )
              ],
            )*/
          ],
        ),
      ),
    );
  }
}

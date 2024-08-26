import 'package:bookmark/pages/authpages/login.dart';
import 'package:bookmark/pages/navigation/bottombar.dart';
import 'package:bookmark/pages/navigation/navscreens.dart';
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

  bool hideTextp = true;
  //for password
  bool hideTextcp = true;
  //for confirm password

  Future<void> signup() async {
    if (passwordController.text != confirmPasswordController.text) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Passwords don't match"),
        backgroundColor: Colors.red,
      ));
      return;
    }
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: emailAddressController.text,
              password: passwordController.text);
//extra user deets
      await FirebaseFirestore.instance
          .collection('users')
          .doc(userCredential.user!.uid)
          .set({
        'email': emailAddressController.text.trim(),
        'password': passwordController.text.trim(),
      });
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Sign up successfull"),
        backgroundColor: Colors.green,
      ));
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => const Navscreens(),
      ));
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Registration failed:${e.toString()}"),
        backgroundColor: Colors.red,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(
              style: const ButtonStyle(
                  backgroundColor:
                      WidgetStatePropertyAll(Color.fromARGB(255, 169, 62, 23))),
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
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(45)),
                labelText: ("Email"),
              ),
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
                  labelText: "Password",
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
              height: 15,
            ),
            TextField(
                controller: confirmPasswordController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(45)),
                    labelText: " confirm password",
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
              height: 15,
            ),
            ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                        Color.fromARGB(255, 169, 62, 23))),
                onPressed: signup,
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
          ],
        ),
      ),
    );
  }
}
/*Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 150,
                  height: 150,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/images/img.jpg'),
                        fit: BoxFit.cover),
                  ),
                )
              ],
            )*/ 
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Forgotpassword extends StatefulWidget {
  const Forgotpassword({super.key});

  @override
  State<Forgotpassword> createState() => _ForgotpasswordState();
}

class _ForgotpasswordState extends State<Forgotpassword> {
  final TextEditingController emailAddressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Enter Email to send a password reset email"),
          TextField(
            controller: emailAddressController,
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(45)),
                hintText: "EmailAddress"),
          ),
          ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor:
                      WidgetStatePropertyAll(Color.fromARGB(255, 169, 62, 23))),
              onPressed: () {
                try {
                  FirebaseAuth.instance.sendPasswordResetEmail(
                      email: emailAddressController.text.trim());
                } catch (e) {
                  print(e);
                }
                ;
              },
              child: const Text(
                "Send recovery Email",
                style: TextStyle(color: Colors.white70),
              ))
        ],
      ),
    ));
  }
}

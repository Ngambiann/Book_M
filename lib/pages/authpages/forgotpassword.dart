
import 'package:flutter/material.dart';

class Forgotpassword extends StatefulWidget {
  const Forgotpassword({super.key});

  @override
  State<Forgotpassword> createState() => _ForgotpasswordState();
}

class _ForgotpasswordState extends State<Forgotpassword> {
  final TextEditingController emailAddressController= TextEditingController();
/*Future <void> reset() async {
  try{
    FirebaseAuth.instance.sendPasswordResetEmail(email:emailAddressController.text.trim());
  }on FirebaseException catch (e) {}
}*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Padding(padding:const  EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment:MainAxisAlignment.center,
        children: [
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(45)),
              labelText: "EmailAddress"
            ),
          ),
          
            ElevatedButton(
              style: const ButtonStyle(backgroundColor:WidgetStatePropertyAll(Color.fromARGB(255, 169, 62, 23))),
              onPressed:(){},
             child:const Text("Send recovery Email",style: TextStyle(color: Colors.white70),))
        ],
      ),
    ));
  }
}
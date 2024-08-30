import 'package:flutter/material.dart';

class Privacypolicy extends StatelessWidget {
  const Privacypolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PRIVACY POLICY"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: ListView(
          children: const [
            Text(
                "At Bookmark, we are committed to protecting your privacy. This Privacy Policy outlines how we collect, use, and disclose personal information when you use our app."
               ),
            Text('Personal Information:',
                style: TextStyle(color: Colors.black38)),
            Text(
                '''We may collect personal information about you, including but not limited to your name, email address, and location. 
                   We may also collect other information that you provide to us, such as your preferences and interests.'''),
            Text('Use of Personal Information:',
                style: TextStyle(color: Colors.black38)),
            Text(
                ''' We use your personal information to provide and improve our app,including to personalize your experience and to communicate with you about our services.'''),
            Text('Disclosure of Personal Information:',
                style: TextStyle(color: Colors.black38)),
            Text(
                ''' We may disclose your personal information to third parties, including but not limited to our service providers and partners.
                    We may also disclose your personal information if we believe it is necessary to comply with any applicable law, regulation, or legal process.'''),
            Text('Security:', style: TextStyle(color: Colors.black38)),
            Text(
                '''We take reasonable measures to protect your personal information from unauthorized access, disclosure, or misuse.
                   This includes implementing appropriate technical and organizational measures to ensure the security of your personal information.'''),
            Text('Data Retention:', style: TextStyle(color: Colors.black38)),
            Text(
                '''We will retain your personal information for as long as necessary to provide our services and to comply with any applicable law or regulation.'''),
            Text('Your Rights:', style: TextStyle(color: Colors.black38)),
            Text(
                '''You have certain rights with respect to your personal information, including the right to access, correct, or delete your personal information. You may exercise these rights by
                   contacting us using the contact information provided below.'''),
            Text('Changes to this Privacy Policy: ',
                style: TextStyle(color: Colors.black38)),
            Text(
                '''We may amend this Privacy Policy at any time by posting a revised version on our app.
                   It is your responsibility to review this Privacy Policy periodically to ensure that you are aware of any changes.'''),
            Text('Contact Us: ', style: TextStyle(color: Colors.black38)),
            Text(
                '''If you have any questions or concerns about this Privacy Policy, please contact us at +254777908645.'''),
            Text(
                'By using our app, you acknowledge that you have read, understood, and agreed to this Privacy Policy.')
          ],
        ),
      ),
    );
  }
}

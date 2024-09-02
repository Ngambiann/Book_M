import 'package:bookmark/pages/screens/navscreens.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class Tiktokdemo extends StatelessWidget {
  const Tiktokdemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Authorize Bookmark to access your Tiktok account?',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 24),
            textAlign: TextAlign.center,
          ),
          
           Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [const SizedBox(width: 50,),
              Container(
                width: 90,
                height: 90,
                decoration: const BoxDecoration(border: Border(),shape: BoxShape.circle,image: DecorationImage(image: AssetImage('assets/images/user.png'))),
                
              ),
               const SizedBox(width: 50,child: Icon(PhosphorIconsRegular.arrowsLeftRight),),
              Container(
                width: 170,
                height:200,
                decoration: const BoxDecoration(border: Border(),shape: BoxShape.circle,image: DecorationImage(image: AssetImage('assets/images/icon2.png'))),
                
              )
              
            ],
          ),
          Container(
              padding: const EdgeInsets.all(15),
              color: Colors.grey.shade200,
              child: const Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Bookmark',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w800),
                      ),
                      Text('  would like to:')
                    ],
                  ),
                  Text(
                    '''-Read your profile info(avatar,display name,likes count,follower count,following count,verified status)''',
                    style: TextStyle(color: Colors.black54),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                      '''To revoke accces after the authorization,go to TikTok mobile app>"Settings and privacy">"Security and login">"Manage app permissions""''')
                ],
              )),
          const SizedBox(
            height: 100,
          ),
          const Text(
              '''Make sure you this website or app.By tapping "Authorize",you agree to Bookmark's Terms of service and acknowledged that you have read its Privacy policy.'''),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                style: const ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.red)),
                onPressed: (){
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>const Navscreens()));
              }, child: const Text("Authorize",style: TextStyle(color: Colors.white),textAlign: TextAlign.center,)),
               ElevatedButton(
                style:const  ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.white)),
                onPressed: (){
                Navigator.pop(context);
              }, child:const Text("Cancel",style: TextStyle(color: Colors.black),textAlign: TextAlign.center,))
        ],
      ),
    );
  }
}

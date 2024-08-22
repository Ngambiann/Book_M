import 'package:bookmark/pages/authpages/signup.dart';
//import 'package:bookmark/pages/subpages/navscreens.dart';

import 'package:flutter/material.dart';

class Pages extends StatelessWidget {
  const Pages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
          
            
            title: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                
               TextButton(
              style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 159, 52, 14))),
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const Signup()));
              },
              child:
                  const Text('Skip', style: TextStyle(color: Colors.white70)))
                
              ],
            ),
          
        ),
        body: Stack(children: [
          PageView(
            children: [
              Eachpage('assets/images/takeawayneon.jpg',
                  'Discover and visit amazing hidden gems in the city '),
              Eachpage('assets/images/lobby.jpg', 'Plan your next adventure!'),
              Eachpage('assets/images/restaurantfood.jpg',
                  'Lets get the trip out of te group chat'),
            ],
          ),
          
        ]));
  }
}

class Eachpage extends StatelessWidget {
  String imageroute;
  String tag;
  Eachpage(this.imageroute, this.tag, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imageroute,
          width: 750,
          height: 200,
        ),
        Text(
          tag,
          style: const TextStyle(color: Colors.black45, fontSize: 25),
        )
      ],
    );
  }
}






/* TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const Signup()));
              },
              style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.black)),
              child: const Text(
                "Get Started",
                style: TextStyle(color: Colors.white),
              ),
              onFocusChange: (value) => true,
            )*/ 



            /*appBar: AppBar(
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
      
      backgroundColor: Colors.white,
      //Image.asset('images/image_a.jpg')

      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                boxShadow: List.empty(growable: true),
                border: const Border(top: BorderSide.none),
                borderRadius: BorderRadius.circular(12),
                color: Colors.black54,
              ),
              padding: const EdgeInsets.all(25),
              child: const Text(
                "Bookmark helps you discover amazing hidden gems around you and all the information you need about the place",
                strutStyle: StrutStyle(fontSize: 35),
                style: TextStyle(color: Colors.white),
              ),
            ),
           
          ],
        ),
      ), */
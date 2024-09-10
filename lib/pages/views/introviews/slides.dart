import 'package:bookmark/components/onboarding/onboardingview.dart';
import 'package:bookmark/pages/views/authviews/signup.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Slides extends StatefulWidget {
  const Slides({super.key});

  @override
  State<Slides> createState() => _SlidesState();
}

class _SlidesState extends State<Slides> {
  final PageController _controller = PageController();
  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color.fromARGB(135, 207, 101, 25),
      appBar: AppBar(
        actions: [
          TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const Signup()));
              },
              child: const Text(
                "Skip",
                style: TextStyle(color: Colors.black54),
              ))
        ],
      ),

//body

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: PageView(
            controller: _controller,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index) {
              setState(() {
                isLastPage = index == 2;
              });
            },
//diff slides
            children: const [
//-#1
              Onboardingview(
                  imagePath: "assets/images/page00.png",
                  catchLine: "Discover cool hidden gems in the city",
                  descripiton:
                      "Find the perfect locations for a party,club meeting,group activity,date,solo date,rewind..."),

//-#2
              Onboardingview(
                  imagePath: "assets/images/page00.png",
                  catchLine: " offline access",
                  descripiton: "Save all your hidden gems for offline access"),

//-#3
              Onboardingview(
                  imagePath: "assets/images/page00.png",
                  catchLine: "Discover",
                  descripiton: "Let's get the trip out of the group chat!"),
            ],
          )),
//indicator
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              onDotClicked: (index) {
                _controller.animateToPage(index,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn);
              },
              effect: ExpandingDotsEffect(
                  activeDotColor: Theme.of(context).primaryColor,
                  dotHeight: 9.0,
                  dotWidth: 12.0,
                  dotColor: Colors.black54),
            ),

//next/done button
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                            Color.fromARGB(255, 195, 89, 36))),
                    onPressed: isLastPage
                        ? () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Signup()));
                          }
                        : () {
                            _controller.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                          },
                    child: Text(
                      isLastPage ? 'Get Started' : 'Next',
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    )),
              ],
            ),
          ]),
          const SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }
}


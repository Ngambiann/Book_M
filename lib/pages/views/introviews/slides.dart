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
      backgroundColor: const Color.fromARGB(135, 207, 101, 25),
//skip button
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor:
                      WidgetStatePropertyAll(Color.fromARGB(255, 195, 89, 36))),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const Signup()));
              },
              child: const Text(
                'Skip',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white70,
                    fontWeight: FontWeight.bold),
              )),
        ],
      ),
      extendBodyBehindAppBar: true,
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
            children: [
              SlidePages(
                imagePath: 'assets/images/introbackground.jpg',
                tagLine: 'Find your next hangout spot',
              ),
              SlidePages(
                imagePath: 'assets/images/introbackground.jpg',
                tagLine: 'Find your next hangout spot',
              ),
              SlidePages(
                imagePath: 'assets/images/introbackground.jpg',
                tagLine: 'Find your next hangout spot',
              ),
            ],
          )),

          const SizedBox(
            height: 100,
          ),
//indicator
          Center(
            child: SmoothPageIndicator(
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
          ),
//next/done button
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
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
                  isLastPage ? 'Done' : 'Next',
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                )),
          ]),
          const SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }
}

//pages template class
class SlidePages extends StatelessWidget {
 final  String tagLine;
  final String imagePath;

  const SlidePages({
    super.key,
    required this.tagLine,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /*Expanded(
            child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
          ),
        )),
        const SizedBox(
          height: 40,
        ),*/
//image
        Image.asset(imagePath),
        const SizedBox(
          height: 20,
        ),
//tagline
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            tagLine,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16, color: Colors.black87),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

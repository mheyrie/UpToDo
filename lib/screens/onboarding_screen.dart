import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:uptodo/sub_screens/intro_screen/intro_page_1.dart';
import 'package:uptodo/sub_screens/intro_screen/intro_page_2.dart';
import 'package:uptodo/sub_screens/intro_screen/intro_page_3.dart';

class MyOnboarding extends StatefulWidget {
  const MyOnboarding({super.key});

  @override
  State<MyOnboarding> createState() => _MyOnboardingState();
}

class _MyOnboardingState extends State<MyOnboarding> {
  //controller to keep track of which page we are on
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          PageView(controller: _controller, children: [
            OnboardingPage1(),
            OnboardingPage2(),
            OnboardingPage3(),
          ]),

          // Skip button at the top right
          Positioned(
            top: 40,
            left: 20,
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
              child: Text(
                "SKIP",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          // Dot Indicator (keeping it in its original position)
          Positioned(
            top: 260, 
            left: 0,
            right: 0,
            child: Center(
              child: SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: SlideEffect(
                  spacing: 8.0,
                  radius: 4.0,
                  dotWidth: 28.0,
                  dotHeight: 6.0,
                  strokeWidth: 1.5,
                  dotColor: Colors.grey,
                  activeDotColor: Colors.white,
                ),
              ),
            ),
          ),

          // Bottom navigation: Back and Next buttons
          Positioned(
            bottom: 40,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Back button
                GestureDetector(
                  onTap: () {
                    _controller.previousPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn,
                    );
                  },
                  child: Text(
                    "Back",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),

                // Next button
                GestureDetector(
                  onTap: () {
                    _controller.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn,
                    );
                  },
                  child: Text(
                    "Next",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

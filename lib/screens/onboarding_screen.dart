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

            //dot indicator
            Container(
                alignment: Alignment(0, -0.2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //skip
                    GestureDetector(child: Text("SKIP")),
                    //dot indicator
                    SmoothPageIndicator(
                      controller: _controller,
                      count: 3,
                      effect: SlideEffect(
                          spacing: 8.0,
                          radius: 4.0,
                          dotWidth: 28.0,
                          dotHeight: 6.0,
                          // paintStyle: PaintingStyle.stroke,
                          strokeWidth: 1.5,
                          dotColor: Colors.grey,
                          activeDotColor: Colors.white),
                    ),

                    //next
                    Text("Next")
                  ],
                ))
          ],
        ));
  }
}

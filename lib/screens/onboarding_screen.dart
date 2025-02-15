import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
        body: Stack(
      children: [
        PageView(controller: _controller, children: [
          Container(
            color: Colors.black,
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.red,
          ),
        ]),

        //dot indicator
        Container(child: SmoothPageIndicator(controller: _controller, count: 3))
      ],
    ));
  }
}

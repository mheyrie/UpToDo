import 'package:flutter/material.dart';

class OnboardingPage1 extends StatelessWidget {
  const OnboardingPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          child: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Manage your Tasks',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10), //space btw text
          Text(
            "You can easily manage all of your daily tasks in DoMe for free",
            style: TextStyle(color: Colors.white, fontSize: 14),
            textAlign: TextAlign.center,
          )
        ],
      )),
    );
  }
}

import 'package:flutter/material.dart';

class OnboardingPage1 extends StatelessWidget {
  const OnboardingPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Move the image to the top
          Padding(
            padding: const EdgeInsets.only(top: 40), // Adjust top spacing
            child: Image.asset(
              'assets/images/onboarding/manage.png',
              width: 200, // Adjust width as needed
              height: 200, // Adjust height as needed
              fit: BoxFit.contain,
            ),
          ),

          const SizedBox(height: 50), // Space below the image

          // Texts in the center
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Manage your Tasks',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10), // Space between texts
                Text(
                  "You can easily manage all of your daily tasks in DoMe for free",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

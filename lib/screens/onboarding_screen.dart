import 'package:flutter/material.dart';

class MyOnboarding extends StatefulWidget {
  const MyOnboarding({super.key});

  @override
  State<MyOnboarding> createState()=> _MyOnboardingState();
  
}

class _MyOnboardingState extends State<MyOnboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Onboarding Screen'),
      ),
    );
  }
}
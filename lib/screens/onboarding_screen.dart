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
      backgroundColor: Colors.black,
      body: Center(
        child: Text('This is the Onboarding Screen',
        style: TextStyle(color:Colors.white, fontSize:24)),
      ),
    );
  }
}
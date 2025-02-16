import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: const Text('Home Screen'),
        backgroundColor: Colors.black, // Sets the app bar background to black
        elevation: 0, // Removes the shadow for a clean look
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: const Center(
        child: Text('Welcome to the Home Screen!'),
      ),
    );
  }
}

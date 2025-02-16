import 'package:flutter/material.dart';
import 'package:uptodo/screens/home_screen.dart';
import 'package:uptodo/screens/login_screen.dart';
import 'package:uptodo/screens/register_screen.dart';
import 'package:uptodo/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: Colors.black,
      ),
      initialRoute: '/', // Starts with SplashScreen
      routes: {
        '/': (context) => const SplashScreen(), // First screen shown
        '/home': (context) => const HomeScreen(), // Home page after onboarding
        '/login': (context) => const LoginScreen(), // Login screen
        '/register': (context) => const RegisterScreen(), // Register screen
      },
    );
  }
}

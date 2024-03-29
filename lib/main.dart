import 'package:flutter/material.dart';
import 'package:profile_ui/screens/about.dart';
import 'package:profile_ui/screens/edit_screen.dart';
import 'package:profile_ui/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        backgroundColor: const Color(0xffe9f0fb),
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      routes: {
        '/edit_screen': (context) => const EditScreen(),
        '/about': (context) => const AboutScreen(),
      },
    );
  }
}

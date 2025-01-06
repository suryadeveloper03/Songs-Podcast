import 'package:flutter/material.dart';
import 'package:pcast/screens/browse/browse_screen.dart';
import 'package:pcast/screens/home_page.dart';
import 'package:pcast/screens/splash_screen.dart';
import 'package:pcast/variables/AppColors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pcast',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.backgroundColor),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}

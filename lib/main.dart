import 'package:flutter/material.dart';
import 'package:whatsapp/screen/splash%20screen/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF00A884)),
        useMaterial3: false
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen()
    );
  }
}


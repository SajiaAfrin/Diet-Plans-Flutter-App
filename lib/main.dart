import 'package:flutter/material.dart';
import 'package:learning/homepage.dart';

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
      title: 'Diet Plans ',
      theme: ThemeData(
        primaryColor: Color(0xFF4CAF50), // Primary Color (Green)
        secondaryHeaderColor: Color(0xFFFFC107), // Secondary Color (Amber)
        scaffoldBackgroundColor: Color(0xFFF9F9F9), // Background Color (Light Grey)
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Color(0xFF212121)), // Text Color (Dark Grey)
          bodyText2: TextStyle(color: Color(0xFF212121)),
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Color(0xFFFF5722), // Accent Color (Deep Orange)
          textTheme: ButtonTextTheme.primary,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF4CAF50), // AppBar Color
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home:  HomePage(),
    );
  }
}


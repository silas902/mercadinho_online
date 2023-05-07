import 'package:flutter/material.dart';
import 'package:hortifruti/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      title: '',
      theme: ThemeData(
        useMaterial3: true,
        elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF23AA49), textStyle: TextStyle(color: Colors.white))),
      ),
      home: const MyHomePage(),
    );
  }
}


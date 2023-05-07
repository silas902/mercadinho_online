import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF23AA49),
    


      body: Center(
        child: SizedBox(
          child: Image.asset('assets/icons/icon.png'),
        ),
      ),
    );
  }
}      
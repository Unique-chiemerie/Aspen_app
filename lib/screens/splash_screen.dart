import 'package:aspen_app/screens/get_started.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      return Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const Getstarted(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: SizedBox(
          height: 100,
          width: 200,
          child: Image.asset('assets/Aspen.png'),
        ),
      ),
    );
  }
}

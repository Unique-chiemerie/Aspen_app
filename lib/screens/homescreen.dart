// ignore: file_names
import 'package:aspen_app/screens/bottom_nav_screens/homenav.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int currentindex = 0;
  //list of screens
  final currentscreen = const [
    Homenav(),
    Placeholder(),
    Placeholder(),
    Placeholder(),
  ];

  void screentap(int index) {
    setState(() {
      currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentscreen[currentindex],
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: const [
            BoxShadow(
              blurRadius: 10,
              color: Color.fromARGB(255, 221, 220, 220),
            ),
          ],
        ),
        child: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.airplane_ticket),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.heart_broken),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle_outlined),
              label: '',
            ),
          ],
          backgroundColor: Colors.transparent,
          elevation: 30,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
        ),
      ),
    );
  }
}

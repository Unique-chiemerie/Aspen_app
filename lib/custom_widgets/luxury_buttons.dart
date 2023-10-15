import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyWidget extends StatelessWidget {
  final String section;
  const MyWidget({super.key, required this.section});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 89,
      decoration: BoxDecoration(
        color: Colors.blue[100],
        borderRadius: BorderRadius.circular(33),
      ),
      child: Center(
        child: Text(
          section,
          style: GoogleFonts.montserrat(
              color: const Color.fromARGB(255, 33, 75, 243),
              fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Coescreen extends StatelessWidget {
  const Coescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'coe tag',
      child: Scaffold(
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Stack(children: [
                SizedBox(
                  height: 350,
                  width: 290,
                  child: Image.asset('assets/coebig.png'),
                ),
                Positioned(
                  child: SizedBox(
                    height: 50,
                    width: 50,
                    child: Image.asset('assets/back.png'),
                  ),
                ),
              ]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Coeurdes',
                  style: GoogleFonts.montserrat(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                const SizedBox(
                  width: 50,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Show map',
                    style: TextStyle(
                        color: Color.fromARGB(255, 33, 65, 243),
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 30,
                ),
                Icon(
                  Icons.star,
                  size: 20,
                  color: Colors.amber.shade700,
                ),
                const Text(
                  '4.5(Reviews)',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
            SizedBox(
              height: 300,
              width: 280,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Aspen is as close as one can get to a storybook\n'
                      'alpine town in America. The Choose-your-own\n'
                      'adventure possibilities--skiing,hiking,dining\n'
                      'shopping and...'),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(),
                    child: const Row(
                      children: [
                        Text(
                          'Read more',
                          style: TextStyle(
                            color: Color.fromARGB(255, 33, 68, 243),
                          ),
                        ),
                        Icon(
                          Icons.expand_more_outlined,
                          color: Color.fromARGB(255, 33, 68, 243),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'Facilities',
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  fontSize: 25),
            ),
            const SizedBox(
              height: 120,
              width: 300,
              child: Placeholder(),
            ),
            SizedBox(
              height: 100,
              width: 300,
              child: Row(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Price',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '\$199',
                        style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.w700,
                            fontSize: 25),
                      ),
                    ],
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 33, 33, 243)),
                      child: Row(
                        children: [
                          Text(
                            'Book now',
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                          const Icon(
                            Icons.forward_rounded,
                            color: Colors.white,
                          ),
                        ],
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

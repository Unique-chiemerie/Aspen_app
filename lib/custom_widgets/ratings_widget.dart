import 'package:flutter/material.dart';

class RateW extends StatelessWidget {
  const RateW({super.key, required this.wid});
  final Widget wid;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 23,
        width: 90,
        decoration: BoxDecoration(
          color: Colors.grey[800],
          borderRadius: BorderRadius.circular(60),
        ),
        child: Center(
          child: wid,
        ),
      ),
    );
  }
}

class RateS extends StatelessWidget {
  const RateS({super.key, required this.rate});
  final String rate;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 23,
        width: 60,
        decoration: BoxDecoration(
          color: Colors.grey[800],
          borderRadius: BorderRadius.circular(60),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(
              Icons.star,
              color: Color.fromARGB(255, 255, 186, 59),
              size: 15,
            ),
            Text(
              rate,
              style: const TextStyle(fontSize: 15, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

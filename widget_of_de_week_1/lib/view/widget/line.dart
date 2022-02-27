import 'package:flutter/material.dart';

class Line extends StatelessWidget {
  final String txt, img;
  const Line({Key? key, required this.img, required this.txt})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              txt,
              style: const TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(height: 3, width: 50, color: Colors.black),
          ],
        ),
        const SizedBox(width: 10),
        Image.asset(
          "assets/img/$img",
          height: 30,
        ),
      ],
    );
  }
}

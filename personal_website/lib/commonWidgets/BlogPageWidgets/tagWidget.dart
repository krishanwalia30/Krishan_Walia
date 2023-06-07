import 'dart:math';

import 'package:flutter/material.dart';

class TagWidget extends StatelessWidget {
  final String Tag;
  const TagWidget({
    Key? key,
    required this.Tag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // List of all the color combinations used in tags
    const List<Color> red = [Color.fromARGB(255, 255, 216, 216), Colors.red];
    const List<Color> green = [
      Color.fromARGB(255, 206, 253, 210),
      Color.fromARGB(255, 49, 136, 52)
    ];
    const List<Color> blue = [Color.fromARGB(31, 144, 220, 244), Colors.blue];

    const List<List<Color>> allColors = [red, green, blue];
    List<Color> choosenColor = allColors[Random().nextInt(3)];

    return Container(
      alignment: Alignment.centerLeft,
      child: Material(
        borderRadius: BorderRadius.circular(16),
        color: choosenColor[0],
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
          child: Text(
            Tag,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: choosenColor[1]),
          ),
        ),
      ),
    );
  }
}

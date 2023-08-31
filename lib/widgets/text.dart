import 'package:flutter/material.dart';

class TextSmall extends StatelessWidget {
  const TextSmall({
    super.key,
    required this.text,
    this.color = Colors.white,
    this.size = 16,
  });
  final String text;
  final Color color;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: size),
    );
  }
}

class TextMoy extends StatelessWidget {
  const TextMoy({
    super.key,
    required this.text,
    this.color = Colors.white,
    this.size = 20,
  });
  final String text;
  final Color color;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(color: color, fontSize: size, fontWeight: FontWeight.w500),
    );
  }
}

class TextLarge extends StatelessWidget {
  const TextLarge({
    super.key,
    required this.text,
    this.color = Colors.white,
    this.size = 25,
  });
  final String text;
  final Color color;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(color: color, fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}

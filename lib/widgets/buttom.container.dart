import 'package:flutter/material.dart';
import 'package:theme/widgets/text.dart';

class ButtomSimple extends StatelessWidget {
  const ButtomSimple({
    super.key,
    required this.title,
    this.borderRius = 30,
    required this.onTap,
  });
  final String title;
  final double borderRius;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRius),
          gradient: const LinearGradient(
              colors: [Colors.blue, Colors.blueAccent],
              transform: GradientRotation(5)),
        ),
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        height: 60,
        child: TextMoy(text: title, color: Colors.white),
      ),
    );
  }
}

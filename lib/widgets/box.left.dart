import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:theme/widgets/text.dart';

class BoxLeft extends StatelessWidget {
  const BoxLeft({
    super.key,
    required this.icon,
    required this.text,
    this.sizeText = 16,
  });
  final HeroIcons icon;
  final String text;
  final double sizeText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          HeroIcon(icon,
              style: HeroIconStyle.solid, size: 50, color: Colors.white),
          TextSmall(text: text, size: sizeText)
        ],
      ),
    );
  }
}

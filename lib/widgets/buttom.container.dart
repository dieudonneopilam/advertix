import 'package:flutter/material.dart';
import 'package:theme/constants/enum.dart';
import 'package:theme/widgets/text.dart';

class ButtomSimple extends StatelessWidget {
  const ButtomSimple({
    super.key,
    required this.title,
    this.borderRius = 30,
    required this.onTap,
    required this.etatRequest,
    this.colors = const [Colors.amber, Colors.pink],
  });
  final String title;
  final double borderRius;
  final VoidCallback onTap;
  final EtatRequest etatRequest;
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRius),
          gradient:
              LinearGradient(colors: colors, transform: GradientRotation(5)),
        ),
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        height: 60,
        child: etatRequest == EtatRequest.loading
            ? const Center(
                child: CircularProgressIndicator(color: Colors.white))
            : TextMoy(text: title, color: Colors.white),
      ),
    );
  }
}

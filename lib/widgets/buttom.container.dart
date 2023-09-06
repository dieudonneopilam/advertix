import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:theme/widgets/text.dart';

class ButtomSimple extends StatelessWidget {
  const ButtomSimple({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.goNamed('home'),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: const LinearGradient(
              colors: [Colors.amber, Colors.pink],
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

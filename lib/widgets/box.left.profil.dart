import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

class BoxLeftProfil extends StatelessWidget {
  const BoxLeftProfil({
    super.key,
    required this.profilUrl,
  });
  final String profilUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 90,
      width: 100,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CircleAvatar(
            radius: 32,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage(profilUrl),
            ),
          ),
          const Positioned(
            bottom: 5,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 12,
              child: HeroIcon(
                HeroIcons.plusCircle,
                style: HeroIconStyle.solid,
                color: Colors.red,
                size: 30,
              ),
            ),
          )
        ],
      ),
    );
  }
}

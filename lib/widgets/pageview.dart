import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

class PageViewScreen extends StatelessWidget {
  const PageViewScreen({
    super.key,
    required this.urlimage,
    required this.profilUrl,
  });
  final String urlimage;
  final String profilUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Stack(children: [
        Container(
            margin: const EdgeInsets.only(top: 0),
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                  image: NetworkImage(
                    urlimage,
                  ),
                  fit: BoxFit.fitHeight,
                  alignment: Alignment.bottomCenter),
            )),
        Positioned(
          top: 50,
          left: 20,
          child: Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                    colors: [Colors.amber, Colors.pink],
                    transform: GradientRotation(2))),
            child: const HeroIcon(HeroIcons.bars3CenterLeft,
                color: Colors.white, size: 30),
          ),
        )
      ]),
    );
  }
}

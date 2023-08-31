import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:theme/widgets/box.left.dart';
import 'package:theme/widgets/box.left.profil.dart';
import 'package:theme/widgets/text.dart';

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
        const Positioned(
          right: 5,
          bottom: 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BoxLeftProfil(
                profilUrl:
                    'https://www.science-et-vie.com/wp-content/uploads/scienceetvie/2021/08/les-dernieres-inventions-futuristes-elon-musk.jpg',
              ),
              BoxLeft(icon: HeroIcons.heart, text: '10K'),
              BoxLeft(icon: HeroIcons.chatBubbleOvalLeftEllipsis, text: '10K'),
              BoxLeft(icon: HeroIcons.paperAirplane, text: '10K'),
            ],
          ),
        ),
        const Positioned(
            bottom: 40,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextMoy(text: '@JaneFisher'),
                SizedBox(height: 10),
                TextSmall(text: 'Locked inhouse together... TikTok'),
                SizedBox(height: 5),
                TextSmall(text: 'time #flyp #quaratine'),
              ],
            ))
      ]),
    );
  }
}

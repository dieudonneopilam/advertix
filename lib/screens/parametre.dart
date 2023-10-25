import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:theme/widgets/text.dart';

class ParametrePage extends StatelessWidget {
  const ParametrePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 242, 242),
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 80,
        title: const TextLarge(
          text: 'Parametres',
          color: Colors.black,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search, size: 30)),
          const SizedBox(width: 20)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: const BoxDecoration(
                color: Colors.white
              ),
              child: Column(
                children: [
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      HeroIcon(HeroIcons.user),
                      SizedBox(width: 10),
                      TextMoy(text: 'Profile', color: Colors.blue, size: 18),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Container(
                    height: 1,
                    width: double.infinity,
                    color: const Color.fromARGB(255, 236, 236, 236),
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    children: [
                      HeroIcon(HeroIcons.lockClosed),
                      SizedBox(width: 10),
                      TextMoy(text: 'Conditions de confidentialité', color: Colors.blue, size: 18),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

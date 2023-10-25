import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:theme/widgets/drawer.dart';
import 'package:theme/widgets/text.dart';

class PorteFeuilPage extends StatelessWidget {
  const PorteFeuilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 234, 234, 234),
      appBar: AppBar(
        toolbarHeight: 80,
        title:
            const TextMoy(text: "Porte feuille", color: Colors.black, size: 30),
        actions: const [
          HeroIcon(HeroIcons.userCircle, size: 40),
          SizedBox(width: 20)
        ],
      ),
      drawer: const DrawerApp(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextLarge(text: '\$ 282 100'),
                  TextSmall(text: 'Balance Totale')
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              width: double.infinity,
              child: Row(
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        padding: const EdgeInsets.all(10),
                        child: const Icon(Icons.arrow_downward_rounded,
                            size: 30, color: Colors.blue),
                      ),
                      const SizedBox(width: 10),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextSmall(text: 'Convertir', color: Colors.black),
                          TextMoy(text: '3040 pieces', color: Colors.black)
                        ],
                      )
                    ],
                  ),
                  Expanded(child: Container()),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        padding: const EdgeInsets.all(10),
                        child: const Icon(Icons.arrow_upward_rounded,
                            size: 30, color: Colors.amber),
                      ),
                      const SizedBox(width: 10),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextSmall(text: 'Transferer', color: Colors.black),
                          TextMoy(text: '\$231.00', color: Colors.black)
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.all(20),
              child: TextMoy(
                  text: 'Historiques des conversions et transferts',
                  size: 17,
                  color: Colors.black),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.arrow_downward_rounded,
                      color: Colors.blue, size: 30),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextSmall(
                        text:
                            'vous avez converti 3000 pieces en dollars. \n31, sept 2023',
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.arrow_upward_rounded,
                      color: Colors.amber, size: 30),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextSmall(
                        text:
                            'vous avez transferé 300 \$ dans votre compte. \n31, sept 2023',
                        color: Colors.black),
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

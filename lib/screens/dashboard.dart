import 'package:flutter/material.dart';
import 'package:theme/utils/color.dart';
import 'package:theme/widgets/text.dart';

class DashBoardPage extends StatelessWidget {
  const DashBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.bgColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: false,
        toolbarHeight: 80,
        title: const TextLarge(text: 'DashBoard', color: Colors.black),
        actions: const [
          CircleAvatar(
              backgroundImage: AssetImage('assets/img/logo.png'), radius: 25),
          SizedBox(width: 10)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                          TextMoy(
                            text: '3040 pieces',
                            color: Colors.black,
                            size: 16,
                          )
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
                          TextMoy(
                            text: '\$231.00',
                            color: Colors.black,
                            size: 16,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: TextMoy(text: 'Détatils', color: Colors.black),
            ),
            ListTile(
              onTap: () {},
              hoverColor: Colors.white,
              focusColor: Colors.white,
              enabled: true,
              leading: const Image(
                  image: AssetImage('assets/img/sondage.png'), height: 50),
              title:
                  const TextMoy(text: 'Sondage', color: Colors.blue, size: 18),
              subtitle: const TextSmall(
                  text: '250 sondages effectués', color: Colors.black),
            ),
            const ListTile(
              leading: Image(
                  image: AssetImage('assets/img/publicite.png'), height: 50),
              title: TextMoy(text: 'Publicités', color: Colors.blue, size: 18),
              subtitle:
                  TextSmall(text: '4 publicités vues', color: Colors.black),
            ),
            const ListTile(
              leading: Image(
                  image: AssetImage('assets/img/naviguer.png'), height: 50),
              title: TextMoy(
                  text: 'Navigation sur les sites',
                  color: Colors.blue,
                  size: 18),
              subtitle: TextSmall(text: '0 navigation', color: Colors.black),
            ),
            const ListTile(
              leading: Image(
                  image: AssetImage('assets/img/tester.png'), height: 50),
              title: TextMoy(
                  text: 'Teste d\'applications',
                  color: Colors.blue,
                  size: 18),
              subtitle: TextSmall(text: '4 testes effectués', color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}

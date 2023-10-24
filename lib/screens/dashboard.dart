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
              height: 150,
              width: double.infinity,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                    colors: [Colors.pinkAccent, Colors.orangeAccent, Colors.pink],
                    transform: GradientRotation(4)),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [TextLarge(text: 'Bienvenue chez ..')],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: TextMoy(text: 'Content All', color: Colors.black),
            ),
             ListTile(
              onTap: (){},
              hoverColor: Colors.white,
              focusColor: Colors.white,
              enabled: true,
              leading: const Image(
                  image: AssetImage('assets/img/sondage.png'), height: 50),
              title: const TextMoy(text: 'Sondage', color: Colors.blue, size: 18),
              subtitle: const TextSmall(text: '200 views', color: Colors.black),
            ),
            const ListTile(
              leading: Image(
                  image: AssetImage('assets/img/publicite.png'), height: 50),
              title: TextMoy(text: 'Publicités', color: Colors.blue, size: 18),
              subtitle: TextSmall(text: '4 publicités', color: Colors.black),
            ),
            const ListTile(
              leading: Image(
                  image: AssetImage('assets/img/naviguer.png'), height: 50),
              title: TextMoy(text: 'Navigation sur les cites', color: Colors.blue, size: 18),
              subtitle: TextSmall(text: '0 navigation', color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}

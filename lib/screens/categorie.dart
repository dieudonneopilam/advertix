import 'package:flutter/material.dart';

import '../widgets/drawer.dart';
import '../widgets/text.dart';

class CategoriePage extends StatefulWidget {
  const CategoriePage({super.key});

  @override
  State<CategoriePage> createState() => _CategoriePageState();
}

class _CategoriePageState extends State<CategoriePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerApp(),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color.fromARGB(255, 255, 110, 7), Colors.pink],
                transform: GradientRotation(3))),
        child: Column(
          children: [
            const SizedBox(height: 50),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () => Scaffold.of(context).openDrawer(),
                        child: const Icon(
                          Icons.menu,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      const CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(
                            'https://www.science-et-vie.com/wp-content/uploads/scienceetvie/2021/08/les-dernieres-inventions-futuristes-elon-musk.jpg'),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 19),
                const Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextMoy(
                    text: 'Categories',
                    size: 30,
                  ),
                )
              ],
            ),
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.all(30),
                  height: MediaQuery.sizeOf(context).height - 242,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                      color: Colors.white),
                  child: Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: MediaQuery.sizeOf(context).width * 0.40,
                        width: MediaQuery.sizeOf(context).width * 0.40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                  blurRadius: 5,
                                  color: Color.fromARGB(255, 236, 235, 235),
                                  spreadRadius: 5)
                            ]),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                                image: AssetImage('assets/img/publicite.png')),
                            SizedBox(height: 10),
                            TextMoy(
                                text: 'Publicités',
                                color: Colors.blue,
                                size: 16),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: MediaQuery.sizeOf(context).width * 0.40,
                        width: MediaQuery.sizeOf(context).width * 0.40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                  blurRadius: 5,
                                  color: Color.fromARGB(255, 236, 235, 235),
                                  spreadRadius: 5)
                            ]),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image: AssetImage('assets/img/sondage.png')),
                            SizedBox(height: 10),
                            TextMoy(
                                text: 'Sondage', color: Colors.blue, size: 16),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: MediaQuery.sizeOf(context).width * 0.40,
                        width: MediaQuery.sizeOf(context).width * 0.40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                  blurRadius: 5,
                                  color: Color.fromARGB(255, 236, 235, 235),
                                  spreadRadius: 5)
                            ]),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.app_blocking_sharp),
                            SizedBox(height: 10),
                            TextMoy(
                              textAlign: TextAlign.center,
                              text: 'test des application',
                              size: 16,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: MediaQuery.sizeOf(context).width * 0.40,
                        width: MediaQuery.sizeOf(context).width * 0.40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                  blurRadius: 5,
                                  color: Color.fromARGB(255, 236, 235, 235),
                                  spreadRadius: 5)
                            ]),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.navigation_rounded),
                            SizedBox(height: 10),
                            TextMoy(
                                textAlign: TextAlign.center,
                                size: 16,
                                text: 'Naviguer sur les cites de nos',
                                color: Colors.blue),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

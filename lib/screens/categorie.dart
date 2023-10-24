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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
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
                        backgroundImage: AssetImage(
                            'assets/img/logo.png'),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 19),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextMoy(
                    text: 'Categories',
                    size: 30,
                  ),
                )
              ],
            ),
            Container(
              alignment: Alignment.topCenter,
              margin: const EdgeInsets.only(top: 0),
              padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
              height: MediaQuery.sizeOf(context).height - 276,
              width: double.infinity,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Colors.white),
              child: Wrap(
                spacing: 20,
                runSpacing: 10,
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
                            image: AssetImage('assets/img/publicite.png'), height: 50, width: 50),
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
                        Image(image: AssetImage('assets/img/sondage.png'), width: 50, height: 50),
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
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/img/tester.png', height: 50, width: 50,),
                        const SizedBox(height: 10),
                        const TextMoy(
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
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/img/naviguer.png', height: 50, width: 50),
                        const SizedBox(height: 10),
                        const TextMoy(
                            textAlign: TextAlign.center,
                            size: 16,
                            text: 'Naviguer sur les cites de nos',
                            color: Colors.blue),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

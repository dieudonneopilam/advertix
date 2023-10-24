import 'package:flutter/material.dart';

import '../widgets/drawer.dart';
import '../widgets/pageview.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerApp(),
      body: PageView(
        scrollDirection: Axis.vertical,
        children: const [
          PageViewScreen(
            profilUrl:
                'assets/videos/v1.mp4',
            urlimage:
                'assets/videos/v1.mp4',
          ),
          PageViewScreen(
            profilUrl:
                'assets/videos/v2.mp4',
            urlimage:
                'assets/videos/v2.mp4',
          ),
          PageViewScreen(
            profilUrl:
                'assets/videos/v1.mp4',
            urlimage:
                'assets/videos/v1.mp4',
          ),
        ],
      ),
    );
  }
}

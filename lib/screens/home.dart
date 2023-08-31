import 'package:flutter/material.dart';
import 'package:theme/widgets/pageview.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: const [
          PageViewScreen(
            profilUrl:
                'https://www.science-et-vie.com/wp-content/uploads/scienceetvie/2021/08/les-dernieres-inventions-futuristes-elon-musk.jpg',
            urlimage:
                'https://estaticos-cdn.elperiodico.com/clip/496ad2dd-e7c1-414b-97bb-1f3a623e5226_alta-libre-aspect-ratio_default_0.jpg',
          ),
          PageViewScreen(
            profilUrl:
                'https://www.science-et-vie.com/wp-content/uploads/scienceetvie/2021/08/les-dernieres-inventions-futuristes-elon-musk.jpg',
            urlimage:
                'https://phantom-marca.unidadeditorial.es/12f4756c390a18794c603f6ab410a86a/resize/828/f/jpg/assets/multimedia/imagenes/2023/04/12/16813179628477.jpg',
          ),
          PageViewScreen(
            profilUrl:
                'https://www.science-et-vie.com/wp-content/uploads/scienceetvie/2021/08/les-dernieres-inventions-futuristes-elon-musk.jpg',
            urlimage:
                'https://static.kinhtedothi.vn/images/upload//2023/07/13/80.jpeg',
          ),
        ],
      ),
    );
  }
}

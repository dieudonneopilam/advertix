import 'package:flutter/material.dart';
import 'package:theme/widgets/text.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextLarge(text: 'Profile', color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                otherAccountsPictures: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.edit,
                      color: Colors.blue,
                    ),
                  )
                ],
                currentAccountPicture: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      'https://www.science-et-vie.com/wp-content/uploads/scienceetvie/2021/08/les-dernieres-inventions-futuristes-elon-musk.jpg'),
                ),
                decoration: BoxDecoration(color: Colors.transparent),
                accountName:
                    TextMoy(text: 'Dieudonne ngwangwa', color: Colors.black),
                accountEmail: TextSmall(
                    text: 'dieudonneopilam2@gmail.com', color: Colors.black)),
          ],
        ),
      ),
    );
  }
}

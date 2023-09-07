import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme/logic/theme/theme_app_bloc.dart';
import 'package:theme/widgets/listtiledrawer.dart';
import 'package:theme/widgets/text.dart';

class DrawerApp extends StatelessWidget {
  const DrawerApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeAppBloc, ThemeAppState>(
      builder: (context, state) {
        (state as ThemeAppInitial);
        return Drawer(
          backgroundColor: (state.themeMode == ThemeMode.light)
              ? Colors.white
              : Colors.black,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://www.science-et-vie.com/wp-content/uploads/scienceetvie/2021/08/les-dernieres-inventions-futuristes-elon-musk.jpg')),
                decoration: BoxDecoration(
                    color: (state.themeMode == ThemeMode.light)
                        ? Colors.white
                        : Colors.black,
                    border: Border.all(color: Colors.transparent)),
                accountName: TextMoy(
                    text: 'Dieudonné Ngwangwa',
                    color: (state.themeMode == ThemeMode.light)
                        ? Colors.black
                        : Colors.white),
                accountEmail: TextSmall(
                  text: 'dieudonneopilam2@gmail.com',
                  color: (state.themeMode == ThemeMode.light)
                      ? Colors.black
                      : Colors.white,
                ),
              ),
              const SizedBox(height: 0),
              const ListTileDrawerTheme(
                  iconLeft: Icons.cloud, title: 'Thème', isTheme: true),
              const ListTileDrawer(
                  iconLeft: Icons.settings, title: 'Paramètres'),
              const ListTileDrawer(
                  iconLeft: Icons.lock_person,
                  title: 'Conditions de confidentialité'),
              const ListTileDrawer(
                  iconLeft: Icons.share, title: 'Partager l\'application'),
              const ListTileDrawer(
                  iconLeft: Icons.info_outlined, title: 'A propos'),
            ],
          ),
        );
      },
    );
  }
}

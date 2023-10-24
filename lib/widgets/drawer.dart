import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:theme/logic/current.user/current_user_bloc.dart';
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
        return BlocBuilder<CurrentUserBloc, CurrentUserState>(
          builder: (context, stateUser) {
            (stateUser as CurrentUserInitial);
            return Drawer(
              backgroundColor: (state.themeMode == ThemeMode.light)
                  ? Colors.white
                  : Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0)),
              child: Column(
                children: [
                  UserAccountsDrawerHeader(
                    currentAccountPicture: const CircleAvatar(
                        backgroundImage: AssetImage('assets/img/logo.png')),
                    decoration: BoxDecoration(
                        color: (state.themeMode == ThemeMode.light)
                            ? Colors.white
                            : Colors.black,
                        border: Border.all(color: Colors.transparent)),
                    accountName: TextMoy(
                        text: '${stateUser.firstName} ${stateUser.lastName}',
                        size: 16,
                        color: (state.themeMode == ThemeMode.light)
                            ? Colors.black
                            : Colors.white),
                    accountEmail: TextSmall(
                      text: stateUser.email,
                      size: 14,
                      color: (state.themeMode == ThemeMode.light)
                          ? Colors.black
                          : Colors.white,
                    ),
                  ),
                  const SizedBox(height: 0),
                  const ListTileDrawerTheme(
                      iconLeft: Icons.cloud, title: 'Thème', isTheme: true),
                  ListTileDrawer(
                      onTap: () => context.goNamed('parametres'),
                      iconLeft: Icons.settings,
                      title: 'Paramètres'),
                  ListTileDrawer(
                      onTap: () {},
                      iconLeft: Icons.lock_person,
                      title: 'Conditions de confidentialité'),
                  ListTileDrawer(
                      onTap: () {},
                      iconLeft: Icons.share,
                      title: 'Partager l\'application'),
                  ListTileDrawer(
                      onTap: () {},
                      iconLeft: Icons.info_outlined,
                      title: 'A propos'),
                ],
              ),
            );
          },
        );
      },
    );
  }
}

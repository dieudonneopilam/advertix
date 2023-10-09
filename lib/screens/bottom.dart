// ignore_for_file: use_build_context_synchronously

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heroicons/heroicons.dart';
import 'package:theme/logic/bottom/bottom_navigation_bar_bloc.dart';
import 'package:theme/logic/current.user/current_user_bloc.dart';
import 'package:theme/logic/theme/theme_app_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:shared_preferences/shared_preferences.dart';
import 'package:theme/utils/page.dart';

class BottomNavigationBarPage extends StatefulWidget {
  const BottomNavigationBarPage({super.key});

  @override
  State<BottomNavigationBarPage> createState() =>
      _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  late SharedPreferences prefs;
  @override
  void initState() {
    getPref();
    super.initState();
  }

  void getPref() async {
    prefs = await SharedPreferences.getInstance();
    var json = {
      '_id': prefs.getString('_id'),
      'email': prefs.getString('email'),
      'firstName': prefs.getString('firstName'),
      'lastName': prefs.getString('lastName'),
      'token': prefs.getString('token'),
    };
    context.read<CurrentUserBloc>().add(OnCreatedUser(json: json));
    print(prefs.getString('token'));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeAppBloc, ThemeAppState>(
      builder: (context, stateTheme) {
        (stateTheme as ThemeAppInitial);
        return BlocBuilder<BottomNavigationBarBloc, BottomNavigationBarState>(
          builder: (context, state) {
            (state as BottomNavigationBarInitial);
            return Scaffold(
              body: pages[state.index],
              bottomNavigationBar: CupertinoTabBar(
                height: 80,
                onTap: (value) => context
                    .read<BottomNavigationBarBloc>()
                    .add(OnChanged(index: value)),
                currentIndex: state.index,
                backgroundColor: (stateTheme.themeMode == ThemeMode.dark)
                    ? Colors.black
                    : Colors.white,
                activeColor: (stateTheme.themeMode == ThemeMode.light)
                    ? Colors.black
                    : Colors.white,
                inactiveColor: Colors.grey,
                items: const [
                  BottomNavigationBarItem(
                      icon: HeroIcon(HeroIcons.creditCard),
                      label: 'Porte feuille'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.category_rounded), label: 'Catégorie'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home), label: 'Accueil'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.dashboard), label: 'Tableau de bord'),
                  BottomNavigationBarItem(
                      icon: HeroIcon(HeroIcons.user), label: 'Profile')
                ],
              ),
            );
          },
        );
      },
    );
  }
}

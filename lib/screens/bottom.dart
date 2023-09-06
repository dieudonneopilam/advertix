import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heroicons/heroicons.dart';
import 'package:theme/logic/bottom/bottom_navigation_bar_bloc.dart';
import 'package:theme/logic/theme/theme_app_bloc.dart';
import 'package:theme/screens/home.dart';

class BottomNavigationBarPage extends StatelessWidget {
  const BottomNavigationBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeAppBloc, ThemeAppState>(
      builder: (context, stateTheme) {
        (stateTheme as ThemeAppInitial);
        return BlocBuilder<BottomNavigationBarBloc, BottomNavigationBarState>(
          builder: (context, state) {
            (state as BottomNavigationBarInitial);
            return Scaffold(
              body: const HomePage(),
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
                      icon: HeroIcon(HeroIcons.bookmarkSquare),
                      label: 'Porte feuille'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home), label: 'Accueil'),
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

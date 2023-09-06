import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme/logic/theme/theme_app_bloc.dart';
import 'package:theme/widgets/text.dart';

class ListTileDrawer extends StatelessWidget {
  const ListTileDrawer({
    super.key,
    required this.title,
    required this.iconLeft,
    this.isTheme = false,
  });
  final String title;
  final IconData iconLeft;
  final bool isTheme;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeAppBloc, ThemeAppState>(
      builder: (context, state) {
        (state as ThemeAppInitial);
        return ListTile(
          onTap: () {},
          title: TextSmall(
            text: title,
            color: (state.themeMode == ThemeMode.light)
                ? Colors.black
                : Colors.white,
          ),
          leading: Icon(
            iconLeft,
            color: (state.themeMode == ThemeMode.light)
                ? Colors.black
                : Colors.white,
          ),
        );
      },
    );
  }
}

class ListTileDrawerTheme extends StatelessWidget {
  const ListTileDrawerTheme({
    super.key,
    required this.title,
    required this.iconLeft,
    this.isTheme = false,
  });
  final String title;
  final IconData iconLeft;
  final bool isTheme;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeAppBloc, ThemeAppState>(
      builder: (context, state) {
        (state as ThemeAppInitial);
        return ListTile(
          title: TextSmall(
            text: title,
            color: (state.themeMode == ThemeMode.light)
                ? Colors.black
                : Colors.white,
          ),
          leading: Icon(
            iconLeft,
            color: (state.themeMode == ThemeMode.light)
                ? Colors.black
                : Colors.white,
          ),
          trailing: IconButton(
              onPressed: () => context.read<ThemeAppBloc>().add(ToggleTheme()),
              icon: Icon((state.themeMode == ThemeMode.dark)
                  ? Icons.light_mode
                  : Icons.nights_stay_rounded),
              iconSize: 30,
              color: (state.themeMode == ThemeMode.dark)
                  ? Colors.amber
                  : Colors.grey),
        );
      },
    );
  }
}

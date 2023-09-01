import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heroicons/heroicons.dart';
import 'package:theme/logic/bottom/bottom_navigation_bar_bloc.dart';
import 'package:theme/screens/home.dart';

class BottomNavigationBarPage extends StatelessWidget {
  const BottomNavigationBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationBarBloc, BottomNavigationBarState>(
      builder: (context, state) {
        (state as BottomNavigationBarInitial);
        return Scaffold(
          body: const HomePage(),
          bottomNavigationBar: CupertinoTabBar(
            onTap: (value) => context
                .read<BottomNavigationBarBloc>()
                .add(OnChanged(index: value)),
            currentIndex: state.index,
            backgroundColor: Colors.black,
            activeColor: Colors.white,
            inactiveColor: Colors.grey,
            border: Border.all(color: Colors.black),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
              BottomNavigationBarItem(
                  icon: HeroIcon(HeroIcons.magnifyingGlass), label: 'search'),
              BottomNavigationBarItem(
                  icon: HeroIcon(
                    HeroIcons.plusCircle,
                    style: HeroIconStyle.solid,
                    size: 50,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: HeroIcon(HeroIcons.chatBubbleBottomCenter),
                  label: 'inbox'),
              BottomNavigationBarItem(
                  icon: HeroIcon(HeroIcons.user), label: 'Me')
            ],
          ),
        );
      },
    );
  }
}

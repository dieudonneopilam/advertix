import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:theme/logic/bottom/bottom_navigation_bar_bloc.dart';
import 'package:theme/screens/bottom.dart';
import 'package:theme/screens/onbording.dart';

class RouteApp {
  final route = GoRouter(
    initialLocation: '/accueil',
    routes: [
      GoRoute(
          name: 'home',
          path: '/',
          builder: (context, state) => BlocProvider(
                create: (context) => BottomNavigationBarBloc(),
                child: const BottomNavigationBarPage(),
              ),
          routes: [
            GoRoute(
              name: 'accueil',
              path: 'accueil',
              builder: (context, state) => const OnBordingPage(),
            )
          ]),
    ],
  );
}

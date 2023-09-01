import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:theme/logic/bottom/bottom_navigation_bar_bloc.dart';
import 'package:theme/screens/bottom.dart';

class RouteApp {
  final route = GoRouter(routes: [
    GoRoute(
      name: 'home',
      path: '/',
      builder: (context, state) => BlocProvider(
        create: (context) => BottomNavigationBarBloc(),
        child: const BottomNavigationBarPage(),
      ),
    ),
  ]);
}

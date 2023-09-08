import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:theme/logic/bottom/bottom_navigation_bar_bloc.dart';
import 'package:theme/logic/login.switch/login_select_bloc.dart';
import 'package:theme/logic/paie.selected/paiement_selected_bloc.dart';
import 'package:theme/logic/password.field/password_field_bloc.dart';
import 'package:theme/logic/theme/theme_app_bloc.dart';
import 'package:theme/screens/bottom.dart';
import 'package:theme/screens/login.dart';
import 'package:theme/screens/onbording.dart';
import 'package:theme/screens/paie.dart';

class RouteApp {
  final route = GoRouter(
    initialLocation: '/accueil',
    routes: [
      GoRoute(
          name: 'home',
          path: '/',
          builder: (context, state) => MultiBlocProvider(
                providers: [
                  BlocProvider(create: (context) => BottomNavigationBarBloc()),
                  BlocProvider(create: (context) => ThemeAppBloc()),
                ],
                child: const BottomNavigationBarPage(),
              ),
          routes: [
            GoRoute(
              name: 'accueil',
              path: 'accueil',
              builder: (context, state) => const OnBordingPage(),
            ),
            GoRoute(
              name: 'login',
              path: 'login',
              builder: (context, state) => MultiBlocProvider(
                providers: [
                  BlocProvider(
                    create: (context) => LoginSelectBloc(),
                  ),
                  BlocProvider(create: (context) => PasswordFieldBloc()),
                ],
                child: const LoginPage(),
              ),
            ),
            GoRoute(
              name: 'paiement',
              path: 'paie',
              builder: (context, state) => BlocProvider(
                create: (context) => PaiementSelectedBloc(),
                child: const PaiePage(),
              ),
            ),
          ]),
    ],
  );
}

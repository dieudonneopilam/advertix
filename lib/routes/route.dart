import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:theme/logic/bottom/bottom_navigation_bar_bloc.dart';
import 'package:theme/logic/current.user/current_user_bloc.dart';
import 'package:theme/logic/login.switch/login_select_bloc.dart';
import 'package:theme/logic/login/login_bloc.dart';
import 'package:theme/logic/paie.selected/paiement_selected_bloc.dart';
import 'package:theme/logic/password.field/password_field_bloc.dart';
import 'package:theme/logic/signup/sign_up_bloc.dart';
import 'package:theme/logic/theme/theme_app_bloc.dart';
import 'package:theme/logic/validation/validation_field_bloc.dart';
import 'package:theme/screens/bottom.dart';
import 'package:theme/screens/login.dart';
import 'package:theme/screens/onbording.dart';
import 'package:theme/screens/paie.dart';

// ignore: depend_on_referenced_packages
import 'package:shared_preferences/shared_preferences.dart';

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
                  BlocProvider(create: (context) => CurrentUserBloc()),
                ],
                child: const BottomNavigationBarPage(),
              ),
          routes: [
            GoRoute(
              name: 'accueil',
              path: 'accueil',
              builder: (context, state) => const OnBordingPage(),
              redirect: (context, state) async {
                final bloc = BottomNavigationBarBloc();
                final SharedPreferences prefs =
                    await SharedPreferences.getInstance();
                final bool? used = prefs.getBool('used');
                if (used != null) {
                  if (used) {
                    return '/login';
                  }
                }
                return '/accueil';
              },
            ),
          ]),
      GoRoute(
        name: 'paiement',
        path: '/paie',
        builder: (context, state) => MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => PaiementSelectedBloc(),
            ),
            BlocProvider(create: (context) => SignUpBloc()),
            BlocProvider(lazy: false, create: (context) => CurrentUserBloc()),
          ],
          child: const PaiePage(),
        ),
      ),
      GoRoute(
        name: 'login',
        path: '/login',
        builder: (context, state) => MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => LoginSelectBloc()),
            BlocProvider(create: (context) => LoginBloc()),
            BlocProvider(create: (context) => SignUpBloc()),
            BlocProvider(create: (context) => CurrentUserBloc(), lazy: false),
            BlocProvider(create: (context) => ValidationFieldBloc()),
            BlocProvider(create: (context) => PasswordFieldBloc()),
          ],
          child: const LoginPage(),
        ),
        redirect: (context, state) async {
          final SharedPreferences prefs = await SharedPreferences.getInstance();
          final String? token = prefs.getString('token');
          final bool? choosePaie = prefs.getBool('choosePaie');
          if (token != null) {
            if (token.isNotEmpty) {
              if (choosePaie != null) {
                return (choosePaie) ? '/' : '/paie';
              }
              return '/paie';
            }
          }
          return '/login';
        },
      ),
    ],
  );
}

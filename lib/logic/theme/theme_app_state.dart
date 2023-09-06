part of 'theme_app_bloc.dart';

sealed class ThemeAppState extends Equatable {
  const ThemeAppState();

  @override
  List<Object> get props => [];
}

final class ThemeAppInitial extends ThemeAppState {
  final ThemeMode themeMode;
  const ThemeAppInitial({required this.themeMode});
  @override
  List<Object> get props => [themeMode];
}

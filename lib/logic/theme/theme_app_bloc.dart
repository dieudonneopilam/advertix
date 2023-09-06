import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'theme_app_event.dart';
part 'theme_app_state.dart';

class ThemeAppBloc extends Bloc<ThemeAppEvent, ThemeAppState> {
  ThemeAppBloc() : super(const ThemeAppInitial(themeMode: ThemeMode.dark)) {
    on<ToggleTheme>((event, emit) {
      emit(ThemeAppInitial(
          themeMode: ((state as ThemeAppInitial).themeMode == ThemeMode.dark)
              ? ThemeMode.light
              : ThemeMode.dark));
    });
  }
}

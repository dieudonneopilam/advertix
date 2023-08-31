import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'bottom_navigation_bar_event.dart';
part 'bottom_navigation_bar_state.dart';

class BottomNavigationBarBloc
    extends Bloc<BottomNavigationBarEvent, BottomNavigationBarState> {
  BottomNavigationBarBloc()
      : super(const BottomNavigationBarInitial(index: 0)) {
    on<OnChanged>((event, emit) {
      emit(BottomNavigationBarInitial(index: event.index));
    });
  }
}

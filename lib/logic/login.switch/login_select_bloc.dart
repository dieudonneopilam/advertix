import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'login_select_event.dart';
part 'login_select_state.dart';

class LoginSelectBloc extends Bloc<LoginSelectEvent, LoginSelectState> {
  LoginSelectBloc() : super(const LoginSelectInitial(index: 0)) {
    on<OnSwitch>((event, emit) {
      emit(LoginSelectInitial(index: event.index));
    });
  }
}

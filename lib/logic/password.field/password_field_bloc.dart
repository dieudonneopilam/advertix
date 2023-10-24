import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'password_field_event.dart';
part 'password_field_state.dart';

class PasswordFieldBloc extends Bloc<PasswordFieldEvent, PasswordFieldState> {
  PasswordFieldBloc() : super(const PasswordFieldInitial()) {
    on<ToggleFiel1>((event, emit) {
      emit((state as PasswordFieldInitial)
          .copywith(isOpen1: !(state as PasswordFieldInitial).isOpen1));
    });
    on<ToggleFiel2>((event, emit) {
      emit((state as PasswordFieldInitial)
          .copywith(isOpen2: !(state as PasswordFieldInitial).isOpen2));
    });
    on<ToggleFiel3>((event, emit) {
      emit((state as PasswordFieldInitial)
          .copywith(isOpen3: !(state as PasswordFieldInitial).isOpen3));
    });
    on<ToggleFiel4>((event, emit) {
      emit((state as PasswordFieldInitial)
          .copywith(isOpen4: !(state as PasswordFieldInitial).isOpen4));
    });
  }
}

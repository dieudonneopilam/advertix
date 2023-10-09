import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:theme/constants/enum.dart';
import 'package:theme/services/auth.dart';
import 'package:email_validator/email_validator.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthServices authServices = AuthServices();
  LoginBloc() : super(const LoginInitial(email: '', password: '')) {
    on<ValidationEmailPassword>((event, emit) async {
      if (event.email.isNotEmpty &&
          event.password.isNotEmpty &&
          EmailValidator.validate(event.email) &&
          event.password.length >= 8) {
        emit((state as LoginInitial).copywith(
            etatRequest: EtatRequest.loading,
            etatemail: EtatField.valid,
            etatpassword: EtatField.valid));
        try {
          await authServices.signUser(event.context,
              email: event.email, password: event.password);
          emit((state as LoginInitial)
              .copywith(etatRequest: EtatRequest.loaded));
        } catch (e) {
          e.toString();
        }
      } else {
        (event.password.isEmpty)
            ? emit((state as LoginInitial)
                .copywith(etatpassword: EtatField.invalid))
            : emit((state as LoginInitial)
                .copywith(etatpassword: EtatField.valid));
        (event.email.isEmpty)
            ? emit(
                (state as LoginInitial).copywith(etatemail: EtatField.invalid))
            : emit(
                (state as LoginInitial).copywith(etatemail: EtatField.valid));
        (!EmailValidator.validate(event.email))
            ? emit(
                (state as LoginInitial).copywith(etatemail: EtatField.invalid))
            : emit(
                (state as LoginInitial).copywith(etatemail: EtatField.valid));
        (event.password.length < 8)
            ? emit((state as LoginInitial)
                .copywith(etatpassword: EtatField.invalid))
            : emit((state as LoginInitial)
                .copywith(etatpassword: EtatField.valid));
      }
    });
    on<OnChangedField>((event, emit) async {
      (event.password.isEmpty)
          ? emit(
              (state as LoginInitial).copywith(etatpassword: EtatField.invalid))
          : emit(
              (state as LoginInitial).copywith(etatpassword: EtatField.valid));
      (event.email.isEmpty)
          ? emit((state as LoginInitial).copywith(etatemail: EtatField.invalid))
          : emit((state as LoginInitial).copywith(etatemail: EtatField.valid));
      (!EmailValidator.validate(event.email))
          ? emit((state as LoginInitial).copywith(etatemail: EtatField.invalid))
          : emit((state as LoginInitial).copywith(etatemail: EtatField.valid));
      (event.password.length < 8)
          ? emit(
              (state as LoginInitial).copywith(etatpassword: EtatField.invalid))
          : emit(
              (state as LoginInitial).copywith(etatpassword: EtatField.valid));
    });
  }
}

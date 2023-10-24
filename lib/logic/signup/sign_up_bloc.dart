import 'package:bloc/bloc.dart';
import 'package:email_validator/email_validator.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:theme/models/user.dart';
import 'package:theme/services/auth.dart';

import '../../constants/enum.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final AuthServices authServices = AuthServices();
  SignUpBloc() : super(const SignUpInitial()) {
    on<ValidatedSignUp>((event, emit) async {
      if (event.confirmed.isNotEmpty &&
          event.confirmed.length >= 8 &&
          EmailValidator.validate(event.email) &&
          event.nom.isNotEmpty &&
          event.prenom.isNotEmpty &&
          event.password.isNotEmpty &&
          event.password.length >= 8) {
        emit((state as SignUpInitial)
            .copywith(etatRequest: EtatRequest.loading));
        try {
          final registerUser = RegisterUser(
            email: event.email,
            firstname: event.nom,
            lastname: event.prenom,
            password: event.password,
          );
          await authServices.signUp(registerUser, event.context);
          emit((state as SignUpInitial)
              .copywith(etatRequest: EtatRequest.loaded));
        } catch (e) {
          e.toString();
        }
      } else {
        (event.password.isEmpty || event.password.length < 8)
            ? emit((state as SignUpInitial)
                .copywith(etatpassword: EtatField.invalid))
            : emit((state as SignUpInitial)
                .copywith(etatpassword: EtatField.valid));
        (event.confirmed.isEmpty || event.confirmed.length < 8)
            ? emit((state as SignUpInitial)
                .copywith(etatconfirmed: EtatField.invalid))
            : emit((state as SignUpInitial)
                .copywith(etatconfirmed: EtatField.valid));
        (event.confirmed != event.password)
            ? emit((state as SignUpInitial)
                .copywith(etatconfirmed: EtatField.invalid))
            : emit((state as SignUpInitial)
                .copywith(etatconfirmed: EtatField.valid));
        (event.nom.isEmpty)
            ? emit(
                (state as SignUpInitial).copywith(etatnom: EtatField.invalid))
            : emit((state as SignUpInitial).copywith(etatnom: EtatField.valid));

        (event.prenom.isEmpty)
            ? emit((state as SignUpInitial)
                .copywith(etatprenom: EtatField.invalid))
            : emit(
                (state as SignUpInitial).copywith(etatprenom: EtatField.valid));
        (!EmailValidator.validate(event.email))
            ? emit(
                (state as SignUpInitial).copywith(etatemail: EtatField.invalid))
            : emit(
                (state as SignUpInitial).copywith(etatemail: EtatField.valid));
      }
    });
  }
}

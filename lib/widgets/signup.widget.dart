import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme/logic/password.field/password_field_bloc.dart';
import 'package:theme/logic/signup/sign_up_bloc.dart';
import 'package:theme/widgets/buttom.container.dart';
import 'package:theme/widgets/field.normal.dart';

class SignUpPageWidget extends StatelessWidget {
  const SignUpPageWidget(
      {super.key,
      required this.email2Controller,
      required this.password2Controller,
      required this.prenomController,
      required this.nomController,
      required this.confirmedController});

  final TextEditingController email2Controller;
  final TextEditingController password2Controller;
  final TextEditingController prenomController;
  final TextEditingController nomController;
  final TextEditingController confirmedController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocBuilder<SignUpBloc, SignUpState>(
          builder: (context, state) {
            (state as SignUpInitial);
            return TextFielNormal(
              hintText: 'Prénom',
              etatField: state.etatprenom,
              controller: prenomController,
            );
          },
        ),
        BlocBuilder<SignUpBloc, SignUpState>(
          builder: (context, state) {
            (state as SignUpInitial);
            return TextFielNormal(
              hintText: 'Nom',
              etatField: state.etatnom,
              controller: nomController,
            );
          },
        ),
        BlocBuilder<SignUpBloc, SignUpState>(
          builder: (context, state) {
            (state as SignUpInitial);
            return TextFielNormal(
              hintText: 'Email',
              ismail: true,
              etatField: state.etatemail,
              controller: email2Controller,
            );
          },
        ),
        const SizedBox(height: 5),
        BlocBuilder<PasswordFieldBloc, PasswordFieldState>(
          builder: (context, state) {
            (state as PasswordFieldInitial);
            return BlocBuilder<SignUpBloc, SignUpState>(
              builder: (context, stateEtat) {
                (stateEtat as SignUpInitial);
                return TextFielNormal(
                  hintText: 'Mot de passe',
                  isPasword: true,
                  statebscureText: state.isOpen2,
                  onObscure: () =>
                      context.read<PasswordFieldBloc>().add(ToggleFiel2()),
                  etatField: stateEtat.etatpassword,
                  controller: password2Controller,
                );
              },
            );
          },
        ),
        const SizedBox(height: 5),
        BlocBuilder<PasswordFieldBloc, PasswordFieldState>(
          builder: (context, state) {
            (state as PasswordFieldInitial);
            return BlocBuilder<SignUpBloc, SignUpState>(
              builder: (context, stateEtat) {
                (stateEtat as SignUpInitial);
                return TextFielNormal(
                  hintText: 'Confirmer votre mot de passe',
                  isPasword: true,
                  isconfirmed: true,
                  statebscureText: state.isOpen3,
                  onObscure: () =>
                      context.read<PasswordFieldBloc>().add(ToggleFiel3()),
                  etatField: stateEtat.etatconfirmed,
                  controller: confirmedController,
                );
              },
            );
          },
        ),
        const SizedBox(height: 5),
        const SizedBox(height: 10),
        BlocBuilder<SignUpBloc, SignUpState>(
          builder: (context, state) {
            (state as SignUpInitial);
            return ButtomSimple(
              title: 'S\'inscrire',
              onTap: () => context.read<SignUpBloc>().add(ValidatedSignUp(
                  email: email2Controller.text,
                  password: password2Controller.text,
                  confirmed: confirmedController.text,
                  nom: nomController.text,
                  prenom: prenomController.text,
                  context: context)),
              etatRequest: state.etatRequest,
            );
          },
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:theme/logic/password.field/password_field_bloc.dart';
import 'package:theme/widgets/buttom.container.dart';
import 'package:theme/widgets/field.normal.dart';

class SignUpPageWidget extends StatelessWidget {
  const SignUpPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TextFielNormal(hintText: 'Prénom'),
        const TextFielNormal(hintText: 'Nom'),
        const TextFielNormal(hintText: 'Post-nom'),
        const TextFielNormal(hintText: 'Email'),
        const SizedBox(height: 5),
        BlocBuilder<PasswordFieldBloc, PasswordFieldState>(
          builder: (context, state) {
            (state as PasswordFieldInitial);
            return TextFielNormal(
              hintText: 'Mot de passe',
              isPasword: true,
              statebscureText: state.isOpen2,
              onObscure: () =>
                  context.read<PasswordFieldBloc>().add(ToggleFiel2()),
            );
          },
        ),
        const SizedBox(height: 5),
        BlocBuilder<PasswordFieldBloc, PasswordFieldState>(
          builder: (context, state) {
            (state as PasswordFieldInitial);
            return TextFielNormal(
              hintText: 'Confirmer votre mot de passe',
              isPasword: true,
              statebscureText: state.isOpen3,
              onObscure: () =>
                  context.read<PasswordFieldBloc>().add(ToggleFiel3()),
            );
          },
        ),
        const SizedBox(height: 5),
        const SizedBox(height: 10),
        ButtomSimple(
            title: 'S\'inscrire', onTap: () => context.goNamed('paiement')),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:theme/logic/password.field/password_field_bloc.dart';
import 'package:theme/widgets/buttom.container.dart';
import 'package:theme/widgets/field.normal.dart';
import 'package:theme/widgets/social.media.buttom.dart';
import 'package:theme/widgets/text.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPageWidget extends StatelessWidget {
  const LoginPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TextFielNormal(hintText: 'Email'),
        const SizedBox(height: 5),
        BlocBuilder<PasswordFieldBloc, PasswordFieldState>(
          builder: (context, state) {
            (state as PasswordFieldInitial);
            return TextFielNormal(
              hintText: 'Mot de passe',
              isPasword: true,
              statebscureText: state.isOpen1,
              onObscure: () =>
                  context.read<PasswordFieldBloc>().add(ToggleFiel1()),
            );
          },
        ),
        const SizedBox(height: 5),
        Container(
            margin: const EdgeInsets.symmetric(horizontal: 22),
            alignment: Alignment.centerRight,
            child: InkWell(
              onTap: () {},
              child: const TextSmall(
                  text: 'Mot de passe oublié ?', color: Colors.blue),
            )),
        const SizedBox(height: 10),
        ButtomSimple(
          title: 'Se connecter',
          onTap: () => context.goNamed('paiement'),
        ),
        const SizedBox(height: 20),
        const TextMoy(text: 'Ou se connecter avec', color: Colors.black),
        const SizedBox(height: 20),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SocialMediaButtom(
                  colorIcon: Colors.blue,
                  iconData: FontAwesomeIcons.facebook,
                  title: 'Facebook'),
              SocialMediaButtom(
                  colorIcon: Colors.red,
                  iconData: FontAwesomeIcons.google,
                  title: 'Google'),
            ],
          ),
        )
      ],
    );
  }
}

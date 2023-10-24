import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme/constants/enum.dart';
import 'package:theme/logic/current.user/current_user_bloc.dart';
import 'package:theme/logic/login/login_bloc.dart';
import 'package:theme/logic/password.field/password_field_bloc.dart';
import 'package:theme/widgets/buttom.container.dart';
import 'package:theme/widgets/field.normal.dart';
import 'package:theme/widgets/social.media.buttom.dart';
import 'package:theme/widgets/text.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPageWidget extends StatelessWidget {
  const LoginPageWidget(
      {super.key,
      required this.emailController,
      required this.passwordController});
  final TextEditingController emailController;
  final TextEditingController passwordController;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            (state as LoginInitial);
            return TextFielNormal(
              ismail: true,
              controller: emailController,
              hintText: 'Email',
              etatField: state.etatemail,
            );
          },
        ),
        const SizedBox(height: 5),
        BlocBuilder<PasswordFieldBloc, PasswordFieldState>(
          builder: (context, state) {
            (state as PasswordFieldInitial);
            return BlocBuilder<LoginBloc, LoginState>(
              builder: (context, stateEtat) {
                (stateEtat as LoginInitial);
                return TextFielNormal(
                  controller: passwordController,
                  hintText: 'Mot de passe',
                  isPasword: true,
                  statebscureText: state.isOpen1,
                  onObscure: () =>
                      context.read<PasswordFieldBloc>().add(ToggleFiel1()),
                  etatField: stateEtat.etatpassword,
                );
              },
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
        BlocBuilder<CurrentUserBloc, CurrentUserState>(
          builder: (context, state) {
            return BlocBuilder<LoginBloc, LoginState>(
              builder: (context, state) {
                (state as LoginInitial);
                return ButtomSimple(
                  title: 'Se connecter',
                  onTap: () {
                    if (state.etatRequest != EtatRequest.loading) {
                      context.read<LoginBloc>().add(ValidationEmailPassword(
                            email: emailController.text,
                            password: passwordController.text,
                            context: context,
                          ));
                    }
                  },
                  etatRequest: state.etatRequest,
                );
              },
            );
          },
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

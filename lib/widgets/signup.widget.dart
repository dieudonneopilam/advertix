import 'package:flutter/material.dart';
import 'package:theme/widgets/buttom.container.dart';
import 'package:theme/widgets/field.normal.dart';

class SignUpPageWidget extends StatelessWidget {
  const SignUpPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TextFielNormal(hintText: 'Email'),
        SizedBox(height: 5),
        TextFielNormal(hintText: 'Mot de passe', isPasword: true),
        SizedBox(height: 5),
        TextFielNormal(
            hintText: 'Confirmer votre mot de passe', isPasword: true),
        SizedBox(height: 5),
        SizedBox(height: 10),
        ButtomSimple(title: 'S\'inscrire'),
      ],
    );
  }
}

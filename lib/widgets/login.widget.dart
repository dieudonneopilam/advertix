import 'package:flutter/material.dart';
import 'package:theme/widgets/buttom.container.dart';
import 'package:theme/widgets/field.normal.dart';
import 'package:theme/widgets/social.media.buttom.dart';
import 'package:theme/widgets/text.dart';

class LoginPageWidget extends StatelessWidget {
  const LoginPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TextFielNormal(hintText: 'Email'),
        const SizedBox(height: 5),
        const TextFielNormal(hintText: 'Mot de passe', isPasword: true),
        const SizedBox(height: 5),
        Container(
            margin: const EdgeInsets.symmetric(horizontal: 22),
            alignment: Alignment.centerRight,
            child: const TextSmall(
                text: 'mot de passe oublié ?', color: Colors.blue)),
        const SizedBox(height: 10),
        const ButtomSimple(title: 'Se connecter'),
        const SizedBox(height: 20),
        const TextMoy(text: 'Ou se connecter avec', color: Colors.black),
        const SizedBox(height: 20),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SocialMediaButtom(
                  colorIcon: Colors.blue, iconData: Icons.facebook),
              SocialMediaButtom(colorIcon: Colors.black, iconData: Icons.apple),
              SocialMediaButtom(colorIcon: Colors.blue, iconData: Icons.window),
            ],
          ),
        )
      ],
    );
  }
}

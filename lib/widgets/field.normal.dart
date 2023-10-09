import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:theme/widgets/text.dart';

import '../constants/enum.dart';

class TextFielNormal extends StatelessWidget {
  const TextFielNormal({
    super.key,
    required this.hintText,
    this.type = TextInputType.text,
    this.isPasword = false,
    this.statebscureText = false,
    this.onObscure,
    this.borderRadius = 30,
    this.marginHorizontal = 20,
    required this.etatField,
    required this.controller,
    this.onChanged,
    this.ismail = false,
    this.isconfirmed = false,
  });
  final String hintText;
  final TextInputType type;
  final bool isPasword;
  final bool statebscureText;
  final VoidCallback? onObscure;
  final double borderRadius;
  final double marginHorizontal;
  final EtatField etatField;
  final TextEditingController controller;
  final VoidCallback? onChanged;
  final bool ismail;
  final bool isconfirmed;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.center,
          height: 60,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          margin:
              EdgeInsets.symmetric(horizontal: marginHorizontal, vertical: 10),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(borderRadius),
              border: Border.all(color: Colors.transparent)),
          child: TextField(
            onChanged: (value) => onChanged,
            controller: controller,
            obscureText: statebscureText,
            keyboardType: type,
            decoration: InputDecoration(
                suffixIcon: isPasword
                    ? IconButton(
                        onPressed: onObscure!,
                        icon: Icon((statebscureText)
                            ? FontAwesomeIcons.eyeSlash
                            : FontAwesomeIcons.eye))
                    : const Text(''),
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: GoogleFonts.poppins()),
          ),
        ),
        etatField == EtatField.invalid
            ? Padding(
                padding: const EdgeInsets.only(left: 25),
                child: TextSmall(
                    text: ismail
                        ? controller.text.isNotEmpty
                            ? 'votre mail est invalide'
                            : 'ce champ est obligatoire'
                        : isconfirmed
                            ? controller.text.isNotEmpty
                                ? 'la confirmation est incorrecte'
                                : 'ce champ est obligatoire'
                            : isPasword
                                ? controller.text.isNotEmpty
                                    ? 'le mot de passe doit avoir aumoins 8 caracteres'
                                    : 'ce champ est obligatoire'
                                : 'ce champ est obligatoire',
                    color: Colors.red),
              )
            : Container()
      ],
    );
  }
}

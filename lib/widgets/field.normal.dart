import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

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
  });
  final String hintText;
  final TextInputType type;
  final bool isPasword;
  final bool statebscureText;
  final VoidCallback? onObscure;
  final double borderRadius;
  final double marginHorizontal;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: EdgeInsets.symmetric(horizontal: marginHorizontal, vertical: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.all(color: Colors.transparent)),
      child: TextField(
        obscureText: statebscureText,
        keyboardType: type,
        decoration: InputDecoration(
            suffixIcon: isPasword
                ? IconButton(
                    onPressed: onObscure!,
                    icon: Icon((statebscureText)
                        ? FontAwesomeIcons.eye
                        : FontAwesomeIcons.eyeSlash))
                : const Text(''),
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: GoogleFonts.poppins()),
      ),
    );
  }
}

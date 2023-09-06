import 'package:flutter/material.dart';

class TextFielNormal extends StatelessWidget {
  const TextFielNormal({
    super.key,
    required this.hintText,
    this.type = TextInputType.text,
    this.isPasword = false,
  });
  final String hintText;
  final TextInputType type;
  final bool isPasword;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.transparent)),
      child: TextField(
        keyboardType: type,
        decoration: InputDecoration(
          suffixIcon:
              isPasword ? const Icon(Icons.remove_red_eye) : const Text(''),
          border: InputBorder.none,
          hintText: hintText,
        ),
      ),
    );
  }
}

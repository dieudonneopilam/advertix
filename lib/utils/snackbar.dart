import 'package:flutter/material.dart';
import 'package:theme/widgets/text.dart';

showSnackBar(String content, BuildContext context, Color color) {
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
    backgroundColor: color,
    content: TextSmall(text: content),
  ));
}

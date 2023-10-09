import 'package:flutter/material.dart';
import 'package:theme/widgets/text.dart';

showSnackBar(String content, BuildContext context) {
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
    backgroundColor: Colors.red,
    content: TextSmall(text: content),
  ));
}

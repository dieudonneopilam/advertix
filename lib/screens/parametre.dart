import 'package:flutter/material.dart';
import 'package:theme/widgets/text.dart';

class ParametrePage extends StatelessWidget {
  const ParametrePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: const TextLarge(text: 'Parametres'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:theme/widgets/text.dart';

class DashBoardPage extends StatelessWidget {
  const DashBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: const TextLarge(text: 'DashBoard', color: Colors.black),
      ),
    );
  }
}

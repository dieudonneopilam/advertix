import 'package:flutter/material.dart';

class SocialMediaButtom extends StatelessWidget {
  const SocialMediaButtom({
    super.key,
    required this.iconData,
    required this.colorIcon,
  });

  final IconData iconData;
  final Color colorIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Icon(iconData, size: 50, color: colorIcon),
    );
  }
}

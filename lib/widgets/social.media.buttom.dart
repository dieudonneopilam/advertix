import 'package:flutter/material.dart';
import 'package:theme/widgets/text.dart';

class SocialMediaButtom extends StatelessWidget {
  const SocialMediaButtom({
    super.key,
    required this.iconData,
    required this.colorIcon,
    required this.title,
  });

  final IconData iconData;
  final Color colorIcon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 60,
      width: MediaQuery.sizeOf(context).width * 0.40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(iconData, color: colorIcon, size: 30),
          const SizedBox(width: 5),
          TextSmall(text: title, color: Colors.black),
        ],
      ),
    );
  }
}

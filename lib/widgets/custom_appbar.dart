import 'package:flutter/material.dart';
import 'package:notes/constants.dart';

import 'custom_icon.dart';

// ignore: must_be_immutable
class CustomAppbar extends StatelessWidget {
  const CustomAppbar(
      {super.key, required this.title, required this.icon, this.onPressed});
  final void Function()? onPressed;
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 28, color: kprimaryColor),
        ),
        const Spacer(),
        CustomIcon(
          onPressed: onPressed,
          icon: icon,
        ),
      ],
    );
  }
}

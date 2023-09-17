import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        color: Colors.black12,
      ),
      height: 46,
      width: 46,
      child: const Icon(
        Icons.search,
        size: 28,
      ),
    );
  }
}
